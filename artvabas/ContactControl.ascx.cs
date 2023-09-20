// Ignore Spelling: Validator

using System;
//using System.Collections.Generic;
using System.Data;
//using System.Linq;
//using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//using System.Xml.Linq;
using System.Net;
using System.Net.Mail;
using System.Xml.Linq;
using System.Configuration;
using System.Web.Services.Description;

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
            //args.IsValid = PlatformAndroidCheckBox.Checked || PlatformIOSCheckBox.Checked;
            switch (KindOfDropDownList.SelectedIndex)
            {
                case 0: // Mobile
                case 3: // Mobile & Desktop
                case 4: // Mobile & Web
                case 6: // Mobile, Desktop & Web
                    args.IsValid = PlatformAndroidCheckBox.Checked || PlatformIOSCheckBox.Checked;
                    break;
                case 1: // Desktop
                case 2: // Web
                case 5: // Desktop & Web
                    args.IsValid = true;
                    break;
            }
        }

        protected void ContactSend_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                
                // Address from where you send the mail
                var fromAddress = ConfigurationManager.AppSettings["mailAccount"];
                // any address where the email will be sending
                var toAddress = ConfigurationManager.AppSettings["mailAccount"];
                //Password of address
                var fromPassword = ConfigurationManager.AppSettings["mailPassword"];
                // Passing the values and make a email formate to display
                string subject = AboutDropDownList.Text;
                string body = "From: " + ContactEmailAddressTextBox.Text + "\n";
                body += "Phone: " + ContactPhoneNumberTextBox.Text + "\n";
                if (AboutDropDownList.SelectedIndex == 1)
                {
                    body += "Subject: " + KindOfDropDownList.Text + "\n";
                    body += "Platform:\n";
                    switch (KindOfDropDownList.SelectedIndex)
                    {
                        case 2: // Web
                        case 4: // Mobile & Web
                        case 5: // Desktop & Web
                        case 6: // Mobile, Desktop & Web
                            body += "\tWeb\n";
                            break;
                    }
                    if (PlatformAndroidCheckBox.Checked) body += "\tAndroid\n";
                    if (PlatformIOSCheckBox.Checked) body += "\tIOS\n";
                    if (PlatformWindowsCheckBox.Checked) body += "\tWindows\n";
                }
                body += "Question: \n" + ContactCommentsTextBox.Text + "\n";
                // smtp settings
                var smtp = new System.Net.Mail.SmtpClient();
                {
                    smtp.Host = ConfigurationManager.AppSettings["smtpServer"];
                    smtp.Port = Convert.ToInt32(ConfigurationManager.AppSettings["smtpPort"]);
                    smtp.EnableSsl = true;
                    smtp.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
                    smtp.Credentials = new NetworkCredential(fromAddress, fromPassword);
                    smtp.Timeout = 20000;
                }
                try
                {
                    //smtp.Send(fromAddress, toAddress, subject, body);
                    
                    Response.Redirect("~/SendThanks.aspx", false);
                }
                catch (Exception ex)
                {
                    Response.Redirect("~/SendError.aspx?send-error=" + ex.Message);
                }
            }
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