// Ignore Spelling: Validator

using System;
//using System.Collections.Generic;
using System.Data;
//using System.Linq;
//using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//using System.Xml.Linq;

namespace artvabas
{
    public partial class ContactControl : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SetLanguagesControlContent(CultureLanguage.CurrentLanguage);
                AboutDropDownList.SelectedIndex = 1;
                KindOfDropDownList.SelectedIndex = 0;
            }
            else
            {
                var ctrl = GetControlThatCausedPostBack(Page);
                if (ctrl != null)
                {
                    if (ctrl.ID == "LanguageDropDownList")
                    {
                        var selectedAbout = AboutDropDownList.SelectedIndex;
                        var selectedKindof = KindOfDropDownList.SelectedIndex;
                        string lang = string.Empty;
                        if (CultureLanguage.CurrentLanguage == "en") { lang = "nl"; }
                        else if (CultureLanguage.CurrentLanguage == "nl") { lang = "en"; }
                        SetLanguagesControlContent(lang);
                        AboutDropDownList.SelectedIndex = selectedAbout;
                        KindOfDropDownList.SelectedIndex = selectedKindof;
                    }
                }
            }
        }

        protected void AboutDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            if (AboutDropDownList.SelectedIndex.Equals(0))
            {
                KindOfPanel.Visible = false;
                PlatformPanel.Visible = false;
                ContactPhoneNumberRequiredFieldValidator.Enabled = false;
            }
            else
            {
                KindOfPanel.Visible = true;
                PlatformPanel.Visible = true;
                ContactPhoneNumberRequiredFieldValidator.Enabled = true;
            }
        }

        protected void KindOfDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            switch (KindOfDropDownList.SelectedIndex)
            {
                case 0: // Mobile
                case 4: // Mobile & Web
                    PlatformAndroidCheckBox.Enabled = true;
                    PlatformIOSCheckBox.Enabled = true;
                    PlatformAndroidCheckBox.Checked = false;
                    PlatformIOSCheckBox.Checked = false;
                    PlatformWindowsCheckBox.Checked = false;
                    break;
                case 1: // Desktop
                case 5: // Desktop & Web
                    PlatformAndroidCheckBox.Enabled = false;
                    PlatformIOSCheckBox.Enabled = false;
                    PlatformAndroidCheckBox.Checked = false;
                    PlatformIOSCheckBox.Checked = false;
                    PlatformWindowsCheckBox.Checked = true;
                    break;
                case 2: // Web
                    PlatformAndroidCheckBox.Enabled = false;
                    PlatformIOSCheckBox.Enabled = false;
                    PlatformWindowsCheckBox.Checked = false;
                    PlatformAndroidCheckBox.Checked = false;
                    PlatformIOSCheckBox.Checked = false;
                    break;
                case 3: // Mobile & Desktop
                case 6: // Mobile, Desktop & Web
                    PlatformAndroidCheckBox.Enabled = true;
                    PlatformIOSCheckBox.Enabled = true;
                    PlatformAndroidCheckBox.Checked = false;
                    PlatformIOSCheckBox.Checked = false;
                    PlatformWindowsCheckBox.Checked = true;
                    break;
            }
        }

        protected void PlatformCustomValidator_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = PlatformAndroidCheckBox.Checked || PlatformIOSCheckBox.Checked;
        }

        protected void ContactSend_Click(object sender, EventArgs e)
        {
            if (Page.IsValid) { }
        }

        private Control GetControlThatCausedPostBack(Page page)
        {
            //initialize a control and set it to null
            Control ctrl = null;

            //get the event target name and find the control
            string ctrlName = page.Request.Params.Get("__EVENTTARGET");
            if (!String.IsNullOrEmpty(ctrlName))
                ctrl = page.FindControl(ctrlName);

            //return the control to the calling method
            return ctrl;
        }

        private void SetLanguagesControlContent(string language)
        {
            DataSet ds = new DataSet();
            ds.ReadXml(Server.MapPath("~/App_Data/" + language + "_aboutddl.xml"));
            AboutDropDownList.DataTextField = "option";
            AboutDropDownList.DataSource = ds;
            AboutDropDownList.DataBind();

            ds = new DataSet();
            ds.ReadXml(Server.MapPath("~/App_Data/" + language + "_kindofddl.xml"));
            KindOfDropDownList.DataTextField = "option";
            KindOfDropDownList.DataSource = ds;
            KindOfDropDownList.DataBind();
        }
    }
}