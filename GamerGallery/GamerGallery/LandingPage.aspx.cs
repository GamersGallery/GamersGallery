using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GamerGallery
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogClick(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void btnRegClick(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }
    }
}