using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;
using System.Net;
using System.IO;
using System.Data;
using System.Text.RegularExpressions;
namespace GamerGallery
{
    public partial class Gallery : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies.Count == 0)
            {
                Response.Redirect("Login.Aspx");
            }

            string testURL = HttpContext.Current.Request.Url.LocalPath;
            if (testURL.EndsWith("Login.aspx"))
            {
                Response.Redirect("LandingPage.aspx");
            }

            if (!IsPostBack)
            {
                long steamID = long.Parse(Request.Cookies["SteamID"].Value);
                Fill_Gallery(steamID);
            }
        }
        protected void Fill_Gallery(long steamID)
        {
            string url = "http://api.steampowered.com/IPlayerService/GetOwnedGames/v0001/?&include_appinfo&key=415D9AE08A76A31839DC375BFB2E1975&steamid=" + steamID + "&include_appinfo=true";
            HttpWebRequest request = WebRequest.Create(url) as HttpWebRequest;
            string jsonString = "";
            using (HttpWebResponse response = request.GetResponse() as HttpWebResponse)
            {
                StreamReader reader = new StreamReader(response.GetResponseStream());
                jsonString = reader.ReadToEnd();
            }

            if (jsonString == "{\"response\":{}}") 
            {
                //testTextbox.Text = "PROFILE ERROR";
            }
            else
            {
                jsonString = parseJSON(jsonString);
                DataTable gallery = jsonConversion(jsonString);
                galleryGrid.DataSource = gallery;
                galleryGrid.DataBind();
            }
        }
        public string parseJSON(string jsonString)
        {
            string s = string.Empty;
            int gamesNum = 0;
            for (int i = 0; i < 30; i++)
            {
                if (Char.IsDigit(jsonString[i]))
                {
                    s += jsonString[i];
                }
            }
            if (s.Length > 0)
            {
                gamesNum = int.Parse(s);
            }
            jsonString = jsonString.Replace("{\"response\":{\"game_count\":" + gamesNum.ToString() + ",\"games\":[", string.Empty);
            s = string.Empty;
            for (int i = 0; i < jsonString.Length; i++)
            {
                for (int j = 0; j < 16; j++)
                {
                    if (i + j >= jsonString.Length)
                    {
                        break;
                    }
                    else
                    {
                        s += jsonString[i + j];
                        if (s == ",\"img_icon_url\":")
                        {
                            s = string.Empty;
                            for (int k = 0; k < 200; k++)
                            {
                                for (int l = 0; l < 25; l++)
                                {
                                    if (i + j + k + l >= jsonString.Length)
                                    {
                                        break;
                                    }
                                    else
                                    {
                                        s += jsonString[i + j + k + l];
                                        if (s == "\"playtime_linux_forever\":")
                                        {
                                            s = string.Empty;
                                            int linuxDigit = 1;
                                            for (int m = 0; m < 7; m++)
                                            {
                                                if (i + j + k + l + m >= jsonString.Length)
                                                {
                                                    break;
                                                }
                                                else if (Char.IsDigit(jsonString[i + j + k + l + m]))
                                                {
                                                    linuxDigit++;
                                                }
                                            }
                                            jsonString = jsonString.Remove(i, j + k + l + linuxDigit);

                                        }
                                    }
                                }
                                s = string.Empty;
                            }
                        }
                    }
                }
                s = string.Empty;
            }
            s = string.Empty;
            for (int i = 0; i < jsonString.Length; i++)
            {
                for (int j = 0; j < 18; j++)
                {
                    if (i + j >= jsonString.Length)
                    {
                        break;
                    }
                    else
                    {
                        s += jsonString[i + j];
                        if (s == "\"playtime_2weeks\":")
                        {
                            int twoDigit = 0;
                            s = string.Empty;
                            for (int k = 1; k < 6; k++)
                            {
                                if (i + j + k >= jsonString.Length)
                                {
                                    break;
                                }
                                else if (Char.IsDigit(jsonString[i + j + k]))
                                {
                                    twoDigit++;
                                }
                                else if (jsonString[i + j + k] == ',')
                                {
                                    jsonString = jsonString.Remove(i, j + twoDigit + 2);
                                }
                            }
                        }
                    }
                }
                s = string.Empty;
            }
            jsonString = jsonString.Replace("appid", "Game ID");
            jsonString = jsonString.Replace("name", "Title");
            jsonString = jsonString.Replace("playtime_forever", "Time played (steam) in minutes");
            jsonString = crossPlatform(jsonString);
            return jsonString;
        }
        public DataTable jsonConversion(string jsonString)
        {
            DataTable gallery = new DataTable();
            string[] jsonArray = Regex.Split(jsonString.Replace("[", "").Replace("]", ""), "},{");
            List<string> columnName = new List<string>();
            foreach (string jA in jsonArray)
            {
                string[] jsonData = Regex.Split(jA.Replace("{", "").Replace("}", ""), ",");
                foreach (string columnData in jsonData)
                {
                    try
                    {
                        int index = columnData.IndexOf(":");
                        string columnString = columnData.Substring(0, index - 1).Replace("\"", "");
                        if (!columnName.Contains(columnString))
                        {
                            columnName.Add(columnString);
                        }
                    }
                    catch (Exception)
                    {
                        throw new Exception(string.Format("Error Parsing Column Name : {0}", columnName));
                    }
                }
                break;
            }
            foreach (string addColumnName in columnName)
            {
                gallery.Columns.Add(addColumnName);
            }
            foreach (string jA in jsonArray)
            {
                string[] rowData = Regex.Split(jA.Replace("{", "").Replace("}", ""), ",");
                DataRow row = gallery.NewRow();
                foreach (string data in rowData)
                {
                    try
                    {
                        int index = data.IndexOf(":");
                        string rowColumn = data.Substring(0, index - 1).Replace("\"", "");
                        string rowString = data.Substring(index + 1).Replace("\"", "");
                        row[rowColumn] = rowString;
                    }
                    catch (Exception)
                    {
                        continue;
                    }
                }
                gallery.Rows.Add(row);
            }
            return gallery;
        }
        public string crossPlatform(string jsonString)
        {
            string s = string.Empty;
            int instance = 0;
            List<int> positions = new List<int>();
            for (int i = 0; i < jsonString.Length; i++)
            {
                for (int j = 0; j < 15; j++)
                {
                    if (i + j >= jsonString.Length)
                    {
                        break;
                    }
                    else
                    {
                        s += jsonString[i + j];
                        if (s == "\",\"Time played ")
                        {
                            positions.Add(i + 1);
                            instance++;
                        }
                    }
                }
                s = string.Empty;
            }
            using (CsvFileReader reader = new CsvFileReader(Server.MapPath(@"~/App_Data/games.csv")))
            {
                List<string> Title = new List<string>();
                List<string> Platforms = new List<string>();
                while (!reader.EndOfStream)
                {
                    string line = reader.ReadLine();
                    string[] values = line.Split(',');
                    Title.Add(values[0]);
                    Platforms.Add(values[1]);
                }
                int offset = 0;
                for (int i = 0; i < positions.Count; i++)
                {
                    bool donePrinting = false;
                    for (int j = 0; j < 97; j++)
                    {
                        if (positions[i] - j < 0 || donePrinting || (positions[i] + (32 * i) - j > jsonString.Length))
                        {
                            break;
                        }
                        s = s.Insert(0, jsonString[positions[i] + offset + (32 * i) - j].ToString());
                        for (int k = 0; k < Title.Count; k++)
                        {
                            if (s.Contains("\"Title\":\"" + Title[k]) && Title[k] != "Title")
                            {
                                jsonString = jsonString.Insert(positions[i] + offset + (32 * i), ",\"Cross-Platform Options\": \"" + Platforms[k] + "\"");
                                offset += Platforms[k].Length - 3;
                                donePrinting = true;
                            }
                            else if (s.Contains("Time played (steam) in minutes"))
                            {
                                jsonString = jsonString.Insert(positions[i] + offset + (32 * i), ",\"Cross-Platform Options\": \"---\"");
                                donePrinting = true;
                                break;
                            }
                        }
                    }
                    if (!donePrinting && positions[i] + (32 * i) < jsonString.Length)
                    {
                        jsonString = jsonString.Insert(positions[i] + offset + (32 * i), ",\"Cross-Platform Options\": \"---\"");
                        donePrinting = true;
                    }
                    s = string.Empty;
                }
            }
            return jsonString;
        }
    }
}