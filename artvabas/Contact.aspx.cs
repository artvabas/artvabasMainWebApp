using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace artvabas
{
    public partial class Contact : Page
    {
        public string currentLanguage = string.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            CultureInfo culture = Thread.CurrentThread.CurrentCulture;
            currentLanguage = culture.TwoLetterISOLanguageName;
            
            if (currentLanguage != "en" && currentLanguage != "nl")
            {
                currentLanguage = "en";
            }
        }
    }
}