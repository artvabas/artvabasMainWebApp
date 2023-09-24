using System;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;

/*************************************************************
 * Global.asax.cs page.
 * 
 * is auto generated.
 * 
 * Licensed under MIT (https://github.com/artvabas/artvabasMainWebApp/blob/master/License)
 * 
 * (c) 2023, artvabas
 *************************************************************/

namespace artvabas
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
        }
    }
}