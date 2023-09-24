<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ContactControl.ascx.cs" Inherits="artvabas.ContactControl" %>
<%--
    Using XML language data file to load content and Resonse.Writer to build up this page.

    This is the contact form, what is showed on the Contact.aspx page.

    Licensed under MIT (https://github.com/artvabas/artvabasMainWebApp/blob/master/License)
    (c) 2023, artvabas'--%>
<% 
    System.Xml.XmlDocument xmlDoc = new System.Xml.XmlDocument();
    xmlDoc.Load(Server.MapPath(artvabas.CultureLanguage.GetCultureLanguageDataFile()));
    System.Xml.XmlNodeList dataNode = xmlDoc.GetElementsByTagName("contact-control-data");
    System.Xml.XmlNode context;
%>
<div>
    <%
        context = dataNode[0];
        Response.Write("<label>" + context["about"].InnerText + "&nbsp;</label>");
    %>
</div>
<div>
    <asp:DropDownList ID="AboutDropDownList" runat="server" CssClass="avb-contact-control" AutoPostBack="true"
                OnSelectedIndexChanged="AboutDropDownList_SelectedIndexChanged"></asp:DropDownList>
</div>
<asp:Panel ID="KindOfPanel" runat="server">
    <div>
        <% 
            System.Xml.XmlDocument xmlDoc = new System.Xml.XmlDocument();
            xmlDoc.Load(Server.MapPath(artvabas.CultureLanguage.GetCultureLanguageDataFile()));
            System.Xml.XmlNodeList dataNode = xmlDoc.GetElementsByTagName("contact-control-data");
            System.Xml.XmlNode context;
        %>
    </div>
    <div>
        <%
            context = dataNode[1];
            Response.Write("<label>" + context["kindof"].InnerText + "&nbsp;</label>");
        %>
    </div>
    <div>
        <asp:DropDownList ID="KindOfDropDownList" runat="server" CssClass="avb-contact-control" AutoPostBack="true" 
            OnSelectedIndexChanged="KindOfDropDownList_SelectedIndexChanged"></asp:DropDownList>         
    </div>
</asp:Panel>
<asp:Panel ID="PlatformPanel" runat="server">
    <div>
        <% 
            System.Xml.XmlDocument xmlDoc = new System.Xml.XmlDocument();
            xmlDoc.Load(Server.MapPath(artvabas.CultureLanguage.GetCultureLanguageDataFile()));
            System.Xml.XmlNodeList dataNode = xmlDoc.GetElementsByTagName("contact-control-data");
            System.Xml.XmlNode context;
        %>
    </div>
    <div>
        <%
            context = dataNode[2];
            Response.Write("<label>" + context["platform"].InnerText + "&nbsp;</label>");
        %>
    </div>
    <div>
        <asp:CheckBox ID="PlatformAndroidCheckBox" runat="server" CssClass="avb-contact-control" Text="&nbsp;Android" />
        <asp:CustomValidator runat="server" OnServerValidate="PlatformCustomValidator_ServerValidate" ErrorMessage="Choose one ore more platforms!" Display="Static" Text="*" ForeColor="#DC3545"></asp:CustomValidator>
    </div>
    <div>
        <asp:CheckBox ID="PlatformIOSCheckBox" runat="server" CssClass="avb-contact-control" Text="&nbsp;iOS (Apple)" />
    </div>
    <div>
        <asp:CheckBox ID="PlatformWindowsCheckBox" runat="server" Enabled="false" CssClass="avb-contact-control" Text="&nbsp;Windows (Microsoft)"/> 
    </div>
</asp:Panel>
<div>
     
    <%
        context = dataNode[3];
        Response.Write("<label>" + context["email"].InnerText + "&nbsp;</label>");
    %>
</div>
<div>      
    <asp:TextBox ID="ContactEmailAddressTextBox" runat="server" CssClass="avb-contact-control" AutoCompleteType="Email"></asp:TextBox>
    <asp:RequiredFieldValidator runat="server" ErrorMessage="Contact email address is required!" ControlToValidate="ContactEmailAddressTextBox" Display="Dynamic" Text="*" ForeColor="#DC3545"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator runat="server" ErrorMessage="Ivalid email address! (user@domain.extension)" ControlToValidate="ContactEmailAddressTextBox" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Visible="True" Display="Dynamic" Text="?" ForeColor="#DC3545"></asp:RegularExpressionValidator>
</div> 
<div>
    <%
        context = dataNode[4];
        Response.Write("<label>" + context["phone"].InnerText + "&nbsp;</label>");
    %>
</div>
<div>
    <asp:TextBox ID="ContactPhoneNumberTextBox" runat="server" CssClass="avb-contact-control" AutoCompleteType="Cellular"></asp:TextBox>
    <asp:RequiredFieldValidator ID="ContactPhoneNumberRequiredFieldValidator" runat="server" ErrorMessage="Contact phone number is required!" ControlToValidate="ContactPhoneNumberTextBox" Display="Dynamic" Text="*" ForeColor="#DC3545"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator runat="server" ErrorMessage="Invalid phone number! (only 0123456789+)" ControlToValidate="ContactPhoneNumberTextBox" ValidationExpression="^(\+31|0)([1-9]{1}[0-9]{8})$" Display="Dynamic" Text="?" ForeColor="#DC3545"></asp:RegularExpressionValidator>
</div>
<div>
    <%
        context = dataNode[5];
        Response.Write("<label>" + context["letter"].InnerText + "&nbsp;</label>");
    %>
</div>
<div>
    <asp:TextBox ID="ContactCommentsTextBox" runat="server" TextMode="MultiLine" Rows="5"  Columns="35"></asp:TextBox>
    <asp:RequiredFieldValidator runat="server" ErrorMessage="Contact comments is required!" ControlToValidate="ContactCommentsTextBox" Display="Dynamic" Text="*" ForeColor="#DC3545"></asp:RequiredFieldValidator>

</div>
<div>   
    <%
            context = dataNode[6];
            ContactSend.Text = context["submit"].InnerText;
    %>
</div>
<div>
   <asp:Button ID="ContactSend" runat="server" OnClick="ContactSend_Click"/>
</div>
<div>
    <asp:ValidationSummary runat="server" HeaderText="Some requirements are not entered or wrong!" ForeColor="#DC3545" BorderColor="#FFC107" BorderStyle="Groove" BorderWidth="2" DisplayMode="BulletList" ShowValidationErrors="True" />
</div>
