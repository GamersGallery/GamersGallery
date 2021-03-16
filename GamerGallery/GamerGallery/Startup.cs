using Microsoft.Owin;
using Owin;
using System;
using System.Threading.Tasks;
using IdentityModel.Client;
using Microsoft.AspNet.Identity;
using Microsoft.IdentityModel.Protocols.OpenIdConnect;
using Microsoft.IdentityModel.Tokens;
using Microsoft.Owin.Security;
using Microsoft.Owin.Security.Cookies;
using Microsoft.Owin.Security.OpenIdConnect;
using System.Collections.Generic;
using System.Configuration;
using System.Security.Claims;


[assembly: OwinStartup(typeof(GamerGallery.Startup))]

namespace GamerGallery
{
    public class Startup
    {
        private readonly string _clientId = ConfigurationManager.AppSettings["okta:ClientId"];
        private readonly string _redirectUri = ConfigurationManager.AppSettings["okta:RedirectUri"];
        private readonly string _authority = ConfigurationManager.AppSettings["okta:OrgUri"];
        private readonly string _clientSecret = ConfigurationManager.AppSettings["okta:ClientSecret"];
    }
}
