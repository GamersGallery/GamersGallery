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

        protected void btnGallery_Click(object sender, EventArgs e)
        {
            Response.Redirect("Gallery.aspx");
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Response.Cookies["username"].Expires = DateTime.Now.AddMonths(-7);
            Response.Cookies["password"].Expires = DateTime.Now.AddMonths(-7);
            Response.Cookies["SteamID"].Expires = DateTime.Now.AddMonths(-7);
            Response.Redirect("Login.aspx");
        }
    }
}