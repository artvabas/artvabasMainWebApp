<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="artvabas.Contact" %>
<%--
    Using XML language data file to load content and Resonse.Writer to build up this page
    Licensed under MIT (https://github.com/artvabas/artvabasMainWebApp/blob/master/License)
    (c) 2023, artvabas'--%>
<%@ Register Src="~/ContactControl.ascx" TagPrefix="uc1" TagName="ContactControl" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <% 
            System.Xml.XmlDocument xmlDoc = new System.Xml.XmlDocument();
            xmlDoc.Load(Server.MapPath(artvabas.CultureLanguage.GetCultureLanguageDataFile()));
            System.Xml.XmlNodeList dataNode = xmlDoc.GetElementsByTagName("contact_data");
            System.Xml.XmlNode context;
            context = dataNode[0];
            Response.Write("<h2 id=\"title\">" + context["title"].InnerText + "</h2>");
            context = dataNode[1];
            Response.Write("<h3>" + context["subtitle"].InnerText + "</h3>");
        %>
         <section class="row" aria-labelledby="contactTitle">
            <h1 id="contacthowtoTitle">artvabas</h1>
            <%
                context = dataNode[2];
                Response.Write("<p class=\"lead\">" + context["paragraph"].InnerText + "</p>");
            %>
            <uc1:ContactControl runat="server" ID="ContactControl" />
            <% 
                context = dataNode[3];
                Response.Write("<h4>" + context["see_also_title"].InnerText + "</h4>");
            %>
            <p>
                 <%
                    context = dataNode[4];
                    Response.Write("<a href=\"Getstarted.aspx\" class=\"btn btn-secondary btn-md\">" + context["see_also_button"].InnerText + " &raquo;</a>&nbsp;");
                    context = dataNode[5];
                    Response.Write("<a href=\"Aftercare.aspx\" class=\"btn btn-success btn-md\">" + context["see_also_button"].InnerText + " &raquo;</a>&nbsp;");
                    context = dataNode[6];
                    Response.Write("<a href=\"Donation.aspx\" class=\"btn btn-info btn-md\">" + context["see_also_button"].InnerText + " &raquo;</a>&nbsp;");
                %>
                
            </p>
        </section>
    </main>
</asp:Content>
