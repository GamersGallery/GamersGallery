using System;
using System.Text;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GamerGallery
{
    public partial class Account : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            StringBuilder sb = new StringBuilder(passwordLabel.Text);
            if (Request.Cookies["username"] != null)
            {
                usernameLabel.Text = Request.Cookies["username"].Value;
                int passLength = Request.Cookies["password"].Value.Length;
                for (int i = 0; i < passLength; i++)
                {
                    sb.Append("*");

                }
                passwordLabel.Text = "";
                passwordLabel.Text = sb.ToString();
                steamIdLabel.Text = Request.Cookies["SteamID"].Value;
            }
        }
    }
}