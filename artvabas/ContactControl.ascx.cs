using System;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Configuration;
/**************************************************************
 * ContactControl.asax code-behind.cs control.
 * 
 * This Class is handling the contact-form controls and email message.
 * 
 * Licensed under MIT (https://github.com/artvabas/artvabasMainWebApp/blob/master/License)
 * 
 * (c) 2023, artvabas
 *************************************************************/
namespace artvabas
{
    public partial class ContactControl : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Is page loading because user is navigate to it?
            if (!IsPostBack)
            {   
                // Yes, call method for loading the right language.
                SetLanguagesControlContent(CultureLanguage.CurrentLanguage);
                // Set DropDwonList controls to their begin values
                AboutDropDownList.SelectedIndex = 1;
                KindOfDropDownList.SelectedIndex = 0;
            }
            else // No, its loading because of a control fired it
            {
                // Call method to determine the control that fire this event
                var ctrl = GetControlThatCausedPostBack(Page);
                // Is there a valid control?
                if (ctrl != null)
                {
                    // Yes, is the Language DropDownList control?
                    if (ctrl.ID == "LanguageDropDownList")
                    {
                        // Remember selected index of DropDownList controls
                        var selectedAbout = AboutDropDownList.SelectedIndex;
                        var selectedKindof = KindOfDropDownList.SelectedIndex;
                        // Swap the language
                        string lang = string.Empty;
                        if (CultureLanguage.CurrentLanguage == "en") { lang = "nl"; }
                        else if (CultureLanguage.CurrentLanguage == "nl") { lang = "en"; }
                        // Call method for loading the right language.
                        SetLanguagesControlContent(lang);
                        // Set back the selected indexes of the DropDownList controls
                        AboutDropDownList.SelectedIndex = selectedAbout;
                        KindOfDropDownList.SelectedIndex = selectedKindof;
                    }
                }
            }
        }
        /// <summary>
        /// Method what is trigged when the selected index is changed of;
        /// AboutDropDownList.
        /// This method will change the state of other controls if they needed or not.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
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
        /// <summary>
        /// Method what is trigged when the selected index is changed of;
        /// LindOfDropDownList control.
        /// This method will change the state of the following-up controls if they are needed or not
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
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
        /// <summary>
        /// This method is called when user click on send, then validation is executed.
        /// When validation is executed, this method is called too.
        /// Since the contact form can have multiple check-boxes checked, this method validate
        /// if the right combination is selected by the user.
        /// If so then it set the its argument of validation to true otherwise to false
        /// </summary>
        /// <param name="source"></param>
        /// <param name="args"></param>
        protected void PlatformCustomValidator_ServerValidate(object source, ServerValidateEventArgs args)
        {
            // What kind of platform is selected by the user?
            switch (KindOfDropDownList.SelectedIndex)
            {
                case 0: // Mobile
                case 3: // Mobile & Desktop
                case 4: // Mobile & Web
                case 6: // Mobile, Desktop & Web
                    // it has to do with mobile platform, then one of the mobile platforms must be checked
                    args.IsValid = PlatformAndroidCheckBox.Checked || PlatformIOSCheckBox.Checked;
                    break;
                case 1: // Desktop
                case 2: // Web
                case 5: // Desktop & Web
                    // Otherwise, one of the other platforms must be checked.
                    args.IsValid = true;
                    break;
            }
        }
        /// <summary>
        /// This method is trigged when the page is validated after the user clicked on button send.
        /// It will build up the email message from the controls the user have selected or filled in.
        /// Then the messages will be send.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
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
                    smtp.Send(fromAddress, toAddress, subject, body);
                    Response.Redirect("~/SendThanks.aspx", false);
                }
                catch (Exception ex)
                {
                    Response.Redirect("~/SendError.aspx?send-error=" + ex.Message);
                }
            }
        }
        /// <summary>
        /// This method is called by the Page_laod method.
        /// Its determine witch control have set the post-back trigger, and
        /// return that control to the caller
        /// </summary>
        /// <param name="page"></param>
        /// <returns>Control ctrl, with the control what trigged the post-back, or null when not found</returns>
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

        /// <summary>
        /// This method is called by the Page_load method when page is loaded again
        /// after a post-back. 
        /// It will set the right language data into the DropDownList controls
        /// </summary>
        /// <param name="language"></param>
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