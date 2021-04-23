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

        protected void Loginbutton_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["myConnection"].ToString());

            string username = textBoxUsername.Text;
            con.Open();
            string sqlQry = "SELECT * FROM userLogin WHERE UserId='" + username + "'";
            SqlCommand cmd = new SqlCommand(sqlQry, con);
            SqlDataReader sdr = cmd.ExecuteReader();
            if (sdr.Read())
            {
                string saltedPassword = sdr["UserPass"].ToString();
                bool verifyHash = PasswordSalter.VerifyHash(textBoxPass.Text, "SHA512", saltedPassword);
                if (verifyHash)
                {
                    HttpCookie nameCookie = new HttpCookie("username", username);
                    nameCookie.Expires = DateTime.Now.AddMonths(1);
                    Response.Cookies.Add(nameCookie);
                    HttpCookie passCookie = new HttpCookie("password", saltedPassword);
                    nameCookie.Expires = DateTime.Now.AddMonths(1);
                    Response.Cookies.Add(passCookie);
                    string steamID = sdr["SteamID"].ToString();
                    HttpCookie steamIdCookie = new HttpCookie("SteamID", steamID);
                    nameCookie.Expires = DateTime.Now.AddMonths(1);
                    Response.Cookies.Add(steamIdCookie);
                    Response.Redirect("Account.aspx");
                }
                else
                {
                    error();
                }
            }
            else
            {
                error();
            }
            con.Close();

        }

        private void error()
        {
            Validator.Text = "Incorrect Username/Password please try again!";
        }
    }
}