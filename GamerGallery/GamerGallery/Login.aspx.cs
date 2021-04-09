using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.Owin.Security;
using Microsoft.Owin.Security.OpenIdConnect;
using System.Web.Security;
using Microsoft.Owin.Security.Cookies;
using System.Data.SqlClient;
using System.Configuration;
namespace GamerGallery
{
    public partial class Login2 : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
        }


        protected void Username_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Loginbutton_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["myConnection"].ToString());
            try { 
                string usernameId = textBoxUsername.Text;
                string usernamePassword = textBoxPass.Text;
                con.Open();
                string sqlQry = "select * from userLogin where UserId='" + usernameId + "' and UserPass ='" + usernamePassword + "'";
                SqlCommand cmd = new SqlCommand(sqlQry, con);
                SqlDataReader sdr = cmd.ExecuteReader();
                if (sdr.Read())
                {
                    testLabel.Text = "Account info correct, logging in!";
                }
                else
                {
                    testLabel.Text = "Incorrect Username/Password please try again!";
                }
                con.Close();
            }
            catch (Exception exc)
            {
                Response.Write(exc.Message);
            }
        }

        protected void Username_TextChanged1(object sender, EventArgs e)
        {

        }
    }
}