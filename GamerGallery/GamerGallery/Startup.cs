using IdentityModel.Client;
using Microsoft.AspNet.Identity;
using Microsoft.AspNetCore.Builder;
using Microsoft.Extensions.DependcyInjection
using Microsoft.IdentityModel.Protocols.OpenIdConnect;
using Microsoft.IdentityModel.Tokens;
using Microsoft.Owin;
using Microsoft.Owin.Security;
using Microsoft.Owin.Security.Cookies;
using Microsoft.Owin.Security.OpenIdConnect;
using Owin;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Net.Http;
using System.Security.Claims;
using Owin.Security.Providers.Steam;


[assembly: OwinStartup(typeof(GamerGallery.Startup))]

namespace GamerGallery
{
    public class Startup
    {
        public void ConfigureServices(IServiceCollection services)
        {
            services.AddAuthentication(options => { /* Authentication options */ })
                    .AddSteam()
                    .AddOpenId("StackExchange", "StackExchange", options =>
                    {
                        options.Authority = new Uri("https://openid.stackexchange.com/");
                        options.CallbackPath = "/signin-stackexchange";
                    });
        }

        public void Configure(IApplicationBuilder app)
        {
            app.UseAuthentication();
        }
    }
}
