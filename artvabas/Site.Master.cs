using System;
using System.Globalization;
using System.Threading;
using System.Web.UI;
using System.Web.UI;
/**************************************************************
 * Site.Master code-behind.cs master.
 * 
 * This class determine if website is loaded because of navigation between pages or for the first time.
 * If so then,it check if there is a language selection, if not it create a selection from the language control.
 * 
 * Licensed under MIT (https://github.com/artvabas/artvabasMainWebApp/blob/master/License)
 * 
 * (c) 2023, artvabas
 *************************************************************/

namespace artvabas
{
    public partial class SiteMaster : MasterPage
    {   
        protected void Page_Load(object sender, EventArgs e)
        {
            // Is this function trigged because of first time loading or because of navigation between pages?
            if (!IsPostBack)
            {
                // Yes, do we already have the device language setting?
                if (!CultureLanguage.HaveDeviceCultureLanguage)
                {
                    // No, set language from device
                    CultureInfo culture = Thread.CurrentThread.CurrentCulture;
                    CultureLanguage.CurrentLanguage = culture.TwoLetterISOLanguageName;
                    LanguageDropDownList.SelectedValue = CultureLanguage.CurrentLanguage;
                    CultureLanguage.HaveDeviceCultureLanguage = true;
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