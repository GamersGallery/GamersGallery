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
            DataTable gallery = jsonConversion(jsonString);
            galleryGrid.DataSource = gallery;
            galleryGrid.DataBind();
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