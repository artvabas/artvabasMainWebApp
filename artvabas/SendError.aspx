<%@ Page Title="Send Error" Language="C#" AutoEventWireup="true" CodeBehind="SendError.aspx.cs" Inherits="artvabas.SendError" %>
<%--
    This page is showed when an error occurred when trying to send the contact form on
    the Contact.aspx page.

    Licensed under MIT (https://github.com/artvabas/artvabasMainWebApp/blob/master/License)
    (c) 2023, artvabas'--%>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title><%: Page.Title %></title>
    <webopt:bundlereference runat="server" path="~/Content/css" />
</head>
<body class="avb-error-backround">
    <form id="SendError" runat="server">
        <div class="avb-error-header">
           <h1>Something went wrong with sending the contact form, reason:</h1>
        </div>
        <div class="avb-error-message">
            <asp:Label ID="LabelError" runat="server"></asp:Label>
        </div>
        <div class="link-danger">
            <a href="Contact.aspx">Back to Contact page</a>
        </div>
    </form>
</body>
</html>
