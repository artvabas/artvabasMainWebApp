<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ContactControl.ascx.cs" Inherits="artvabas.ContactControl" %>

<div>
    <table class="avb-contact-table-size">
        <tr>
            <td class="avb-contact-cell-allign">
                <asp:Label runat="server" Text="You want to contact artvabas about?: &nbsp;"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="AboutDropDownList" runat="server" CssClass="avb-contact-control" AutoPostBack="true" OnSelectedIndexChanged="AboutDropDownList_SelectedIndexChanged">
                    <asp:ListItem Text="Just a question" Selected="False"></asp:ListItem>
                    <asp:ListItem Text="Request for building an application" Selected="True"></asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
    </table>
</div> 
<asp:Panel ID="KindOfPanel" runat="server">
    <div>
        <table class="avb-contact-table-size">
            <tr>
                <td class="avb-contact-cell-allign">
                    <asp:Label runat="server" Text="What kind of application(s)?: &nbsp;"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="KindOfDropDownList" runat="server" CssClass="avb-contact-control" AutoPostBack="true" OnSelectedIndexChanged="KindOfDropDownList_SelectedIndexChanged">
                        <asp:ListItem Text="Mobile (phone/tablet)" Selected="True"></asp:ListItem>
                        <asp:ListItem Text="Desktop (laptop/personal computer)"></asp:ListItem>
                        <asp:ListItem Text ="Web (website/web application)"></asp:ListItem>
                        <asp:ListItem Text="Mobile & Desktop"></asp:ListItem>
                        <asp:ListItem Text="Mobile & Web"></asp:ListItem>
                        <asp:ListItem Text="Desktop & Web"></asp:ListItem>
                        <asp:ListItem Text="Mobile, Desktop & Web"></asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
        </table>
    </div>
</asp:Panel>
<asp:Panel ID="PlatformPanel" runat="server">
    <div>
        <table class="avb-contact-table-size">
            <tr>
                <td class="avb-contact-cell-allign">
                    <asp:Label runat="server" Text="For which platform(s)?: &nbsp;" Width="300px"></asp:Label>
                </td>
                <td>
                    <asp:CheckBox ID="PlatformAndroidCheckBox" runat="server" CssClass="avb-contact-control" Text="&nbsp;Android" />
                    <asp:CustomValidator runat="server" OnServerValidate="PlatformCustomValidator_ServerValidate" ErrorMessage="Choose one ore more platforms!" Display="Static" Text="*" ForeColor="#DC3545"></asp:CustomValidator>
                </td>
            </tr>
            <tr>
                <td class="avb-contact-cell-allign">&nbsp;</td>
                <td>
                    <asp:CheckBox ID="PlatformIOSCheckBox" runat="server" CssClass="avb-contact-control" Text="&nbsp;iOS (Apple)" />
                </td>
            </tr>
             <tr>
                <td class="avb-contact-cell-allign">&nbsp;</td>
                <td>
                    <asp:CheckBox ID="PlatformWindowsCheckBox" runat="server" Enabled="false" CssClass="avb-contact-control" Text="&nbsp;Windows (Microsoft)"/> 
                </td>
            </tr>
        </table>
    </div>
</asp:Panel>
<div>
     <table class="avb-contact-table-size">
        <tr>
            <td class="avb-contact-cell-allign">
                <asp:Label runat="server" Text="What's your contact email address?: &nbsp;"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="ContactEmailAddressTextBox" runat="server" CssClass="avb-contact-control" AutoCompleteType="Email"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ErrorMessage="Contact email address is required!" ControlToValidate="ContactEmailAddressTextBox" Display="Dynamic" Text="*" ForeColor="#DC3545"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator runat="server" ErrorMessage="Ivalid email address! (user@domain.extension)" ControlToValidate="ContactEmailAddressTextBox" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Visible="True" Display="Dynamic" Text="?" ForeColor="#DC3545"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="avb-contact-cell-allign">
                <asp:Label runat="server" Text="What's your contact phone number?: &nbsp;"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="ContactPhoneNumberTextBox" runat="server" CssClass="avb-contact-control" AutoCompleteType="Cellular"></asp:TextBox>
                <asp:RequiredFieldValidator ID="ContactPhoneNumberRequiredFieldValidator" runat="server" ErrorMessage="Contact phone number is required!" ControlToValidate="ContactPhoneNumberTextBox" Display="Dynamic" Text="*" ForeColor="#DC3545"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator runat="server" ErrorMessage="Invalid phone number! (only 0123456789+)" ControlToValidate="ContactPhoneNumberTextBox" ValidationExpression="^(\+31|0)([1-9]{1}[0-9]{8})$" Display="Dynamic" Text="?" ForeColor="#DC3545"></asp:RegularExpressionValidator>
            </td>
        </tr>
         <tr>
            <td class="avb-contact-cell-allign">
                <asp:Label ID="ContactCommentsLabel" runat="server" Text="What's your idea about the application comments?: &nbsp;"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="ContactCommentsTextBox" runat="server" TextMode="MultiLine" Rows="5"  Columns="35"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ErrorMessage="Contact comments is required!" ControlToValidate="ContactCommentsTextBox" Display="Dynamic" Text="*" ForeColor="#DC3545"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
            <td class="avb-contact-cell-allign">&nbsp;</td>
             <td class="avb-contact-cell-allign-btn">
                <asp:Button runat="server" CssClass="avb-contact-btn-send" Text="Send" OnClick="ContactSend_Click"/>
            </td>
        </tr>
    </table>
    <table class="avb-contact-Validation-Summary">
        <tr>
            <td>
                <asp:ValidationSummary runat="server" HeaderText="Some requirements are not entered or wrong!" ForeColor="#DC3545" BorderColor="#FFC107" BorderStyle="Groove" BorderWidth="2" DisplayMode="BulletList" ShowValidationErrors="True" />
            </td>
        </tr>
    </table>
</div>
