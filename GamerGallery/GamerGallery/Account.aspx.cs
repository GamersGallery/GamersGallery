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
            if (Request.Cookies["username"] != null)
            {
                usernameLabel.Text = Request.Cookies["username"].Value;
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