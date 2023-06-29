using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace artvabas
{
    public partial class ContactControl : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void AboutDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            if (AboutDropDownList.SelectedIndex.Equals(0))
            {
                KindOfPanel.Visible = false;
                PlatformPanel.Visible = false;
                ContactPhoneNumberRequiredFieldValidator.Enabled = false;
                ContactCommentsLabel.Text = "What's your question comments?: &nbsp;";
            }
            else
            {
                KindOfPanel.Visible = true;
                PlatformPanel.Visible = true;
                ContactPhoneNumberRequiredFieldValidator.Enabled = true;
                ContactCommentsLabel.Text = "What's your idea about the application comments?: &nbsp;";
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
    }
}