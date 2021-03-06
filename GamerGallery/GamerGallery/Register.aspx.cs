﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using Newtonsoft.Json;
using System.Net;
using System.IO;
using System.Data;
using System.Text.RegularExpressions;
namespace GamerGallery
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void btnRegister(object sender, EventArgs e)
        {
            if (pass1.Text != pass2.Text)
            {
                Validator.Text = "Passwords do not match";
            }
            else
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["myConnection"].ToString());
                try
                {
                    string username = textBoxRegUsername.Text;
                    string password = pass1.Text;
                    string steamId = textRegSteamID.Text;
                    string url = "http://api.steampowered.com/IPlayerService/GetOwnedGames/v0001/?&include_appinfo&key=415D9AE08A76A31839DC375BFB2E1975&steamid=" + steamId + "&include_appinfo=true";
                    HttpWebRequest request = WebRequest.Create(url) as HttpWebRequest;
                    string jsonString = "";
                    using (HttpWebResponse response = request.GetResponse() as HttpWebResponse)
                    {
                        StreamReader reader = new StreamReader(response.GetResponseStream());
                        jsonString = reader.ReadToEnd();
                    }
                    if (jsonString == "{\"response\":{}}")
                    {
                        Validator.Text = "Steam account private. Please set your profile to public to use our website.";
                    }
                    else
                    {
                        string saltedPassword = PasswordSalter.ComputeHash(password, "SHA512", null);
                        con.Open();
                        string sqlQry = "INSERT INTO userLogin(UserID, UserPass, SteamID) VALUES ('" + username + "' , '" + saltedPassword + "' , '" + steamId + "')";
                        SqlCommand cmd = new SqlCommand(sqlQry, con);
                        SqlDataReader sdr = cmd.ExecuteReader();
                        HttpCookie nameCookie = new HttpCookie("username", username);
                        nameCookie.Expires = DateTime.Now.AddMonths(1);
                        Response.Cookies.Add(nameCookie);
                        HttpCookie passCookie = new HttpCookie("password", saltedPassword);
                        nameCookie.Expires = DateTime.Now.AddMonths(1);
                        Response.Cookies.Add(passCookie);
                        HttpCookie steamIdCookie = new HttpCookie("SteamID", steamId);
                        nameCookie.Expires = DateTime.Now.AddMonths(1);
                        Response.Cookies.Add(steamIdCookie);
                        Response.Redirect("Account.aspx");
                        con.Close();
                    }
                }
                catch (Exception exc)
                {
                    Validator.Text = "SteamID not found, please try again";
                }
            }
        }
    }
}