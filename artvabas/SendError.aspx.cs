using System;
using System.Web.UI;
/**************************************************************
 * SendError.aspx code-behind.cs page.
 * 
 * This class, is reading the QueryString and place that in the error label control
 * (SendError.aspx?send-error=querystring)
 * 
 * Licensed under MIT (https://github.com/artvabas/artvabasMainWebApp/blob/master/License)
 * 
 * (c) 2023, artvabas
 *************************************************************/

namespace artvabas
{
    public partial class SendError : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LabelError.Text = Request.QueryString["send-error"];
        }
    }
}