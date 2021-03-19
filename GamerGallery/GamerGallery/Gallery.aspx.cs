using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GamerGallery
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        /*  JSON CODE DO NOT DELETE OR I WILL BITE YOU
         string url = "http://api.steampowered.com/IPlayerService/GetOwnedGames/v0001/?&include_appinfo&key=415D9AE08A76A31839DC375BFB2E1975&steamid=76561198071247386&include_appinfo=true";
            HttpWebRequest request = WebRequest.Create(url) as HttpWebRequest;
            string jsonValue = "";
            using (HttpWebResponse response = request.GetResponse() as HttpWebResponse)  
            {
                StreamReader reader = new StreamReader(response.GetResponseStream());
                jsonValue = reader.ReadToEnd();
            }
            dataOutput.Text = jsonValue;
         */
    }
}