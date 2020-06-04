using Microsoft.AspNet.Identity;
using Microsoft.Owin;
using Microsoft.Owin.Security.Cookies;
using Owin;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SatyamSirWork1.App_Start
{
    //in this class we can add authentication for google,facebook
    public partial class StartUp
    {
        public void ConfigureAuth(IAppBuilder app)
        {
            app.UseCookieAuthentication(new CookieAuthenticationOptions
            {
                AuthenticationType=DefaultAuthenticationTypes.ApplicationCookie,
                LoginPath=new PathString("/Account/Login"),
                LogoutPath=new PathString("/Account/LogOff"),
                ExpireTimeSpan=TimeSpan.FromMinutes(30.0)

            });
        }
    }
}