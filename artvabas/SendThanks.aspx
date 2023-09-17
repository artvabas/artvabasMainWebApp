<%@ Page Title="Send Thanks" Language="C#" AutoEventWireup="true" CodeBehind="SendThanks.aspx.cs" Inherits="artvabas.SendThanks" %>

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
        <div style="text-align:center">
            <a class="link-success" href="Default.aspx">Go back to Homepage</a>
        </div>
    </form>
</body>
</html>
