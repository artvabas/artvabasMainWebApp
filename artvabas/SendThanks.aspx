<%@ Page Title="Send Thanks" Language="C#" AutoEventWireup="true" CodeBehind="SendThanks.aspx.cs" Inherits="artvabas.SendThanks" %>
<%--
    This page is showed when sending the contact form on the Contact.aspx page have succeed.

    Licensed under MIT (https://github.com/artvabas/artvabasMainWebApp/blob/master/License)
    (c) 2023, artvabas'--%>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title><%: Page.Title %></title>
    <webopt:bundlereference runat="server" path="~/Content/css" />
</head>
<body class="avb-thanks-background">
    <form id="SendThanks" runat="server">
        <div class="avb-thanks-header">
            <h1>Contact form is send.</h1>
        </div>
        <div class="avb-thanks-message">
            <h3>Soon artvabas will contact you!</h3>
        </div>
        <div class="avb-center-content">
            <img src="images/happygoat.jpg" alt="Alternate Text" width="400" />
        </div>
        <div class="avb-center-content">
            <a class="link-success" href="Default.aspx">Go back to Homepage</a>
        </div>
    </form>
</body>
</html>
