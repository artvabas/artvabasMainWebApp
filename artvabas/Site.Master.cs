using Microsoft.Ajax.Utilities;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Globalization;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

 
namespace artvabas
{
    public partial class SiteMaster : MasterPage
    {   
        protected void Page_Load(object sender, EventArgs e)
        {
            /* Do only, when page has to be load because of navigation between pages or first time opening.
               Not when there is auto post back from a control, in this case we need this for the language selection.
               Because when navigating between pages the selected index of LanguageDropDownList is set to zero.
               Therefore the selected language must be set in the LanguageDropDownlist every time this page has to be load
               because of navigation between page or at startup. */

            // Is this function trigged because of first time loading or because of navigation between pages?
            if (!IsPostBack)
            {
                Response.Headers.Remove("Set-Cookie");
                // Yes, do we already have the device language setting?
                if (!CultureLanguage.HaveDeviceCultureLanguage)
                {
                    // No, set language from device
                    CultureInfo culture = Thread.CurrentThread.CurrentCulture;
                    CultureLanguage.CurrentLanguage = culture.TwoLetterISOLanguageName;
                    LanguageDropDownList.SelectedValue = CultureLanguage.CurrentLanguage;
                    CultureLanguage.HaveDeviceCultureLanguage = true;
                    ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "pop-up", "showPopup();", true);

                }
                else
                {
                    // Yes, place the already known language into the LanguageDropDownList control
                    if (LanguageDropDownList.SelectedValue != CultureLanguage.CurrentLanguage)
                        LanguageDropDownList.SelectedValue = CultureLanguage.CurrentLanguage;
                }
            }
        }
        protected void LanguageDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            CultureLanguage.CurrentLanguage = LanguageDropDownList.SelectedValue;
        }
    }
}