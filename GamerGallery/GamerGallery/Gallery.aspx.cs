﻿using System;
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
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) //code will eventually live here
            {

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

            jsonString = parseJSON(jsonString);
            DataTable gallery = jsonConversion(jsonString);
            galleryGrid.DataSource = gallery;
            galleryGrid.DataBind();
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
            testTextbox.Text = "You own " + gamesNum.ToString() + " games on Steam"; //test code | will delete after integration is complete
            jsonString = jsonString.Replace("{\"response\":{\"game_count\":" + gamesNum.ToString() + ",\"games\":[", string.Empty);
            s = string.Empty;
            int gameNum = 0;
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
                                                else if (Char.IsDigit(jsonString[i+j+k+l+m]))
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
            jsonString = jsonString.Replace("appid", "Game ID");
            jsonString = jsonString.Replace("name", "Title");
            jsonString = jsonString.Replace("playtime_forever", "Time played (steam)");
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
                    catch (Exception ex)
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
                    catch (Exception ex)
                    {
                        continue;
                    }
                }
                gallery.Rows.Add(row);
            }
            return gallery;
        }
        protected void testButtonClickEvent(object sender, EventArgs e) //this button is purely for testing purposes, code will be moved to page load once Okta implementation is complete
        {
            long steamID = long.Parse(testTextbox.Text);
            Fill_Gallery(steamID);
        }
    }
}