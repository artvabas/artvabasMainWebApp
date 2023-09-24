using System.Web.Routing;
using Microsoft.AspNet.FriendlyUrls;
/*************************************************************
 * RouteConfig.cs
 * 
 * Is auto generated.
 * 
 * Licensed under MIT (https://github.com/artvabas/artvabasMainWebApp/blob/master/License)
 * 
 * (c) 2023, artvabas
 * ***********************************************************/
namespace artvabas
{
    public static class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            var settings = new FriendlyUrlSettings
            {
                AutoRedirectMode = RedirectMode.Permanent
            };
            routes.EnableFriendlyUrls(settings);
        }
    }
}
