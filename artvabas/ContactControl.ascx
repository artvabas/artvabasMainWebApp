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
            </td>
        </tr>
        <tr>
            <td class="avb-contact-cell-allign">
                <asp:Label runat="server" Text="What's your contact phone number?: &nbsp;"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="ContactPhoneNumberTextBox" runat="server" CssClass="avb-contact-control" AutoCompleteType="Cellular"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td class="avb-contact-cell-allign">
                <asp:Label ID="ContactCommentsLabel" runat="server" Text="What's your idea about the application?: &nbsp;"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="ContactCommentsTextBox" runat="server" TextMode="MultiLine" Rows="5"  Columns="35"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td class="avb-contact-cell-allign">&nbsp;</td>
             <td>
                <asp:Button ID="ContactSend" runat="server" Text="Send" />
            </td>
        </tr>
    </table>
</div>
