<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="artvabas.About" %>
<%--
    Using XML language data file to load content and Resonse.Writer to build up this page
    Licensed under MIT (https://github.com/artvabas/artvabasMainWebApp/blob/master/License)
    (c) 2023, artvabas'--%>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <% 
            System.Xml.XmlDocument xmlDoc = new System.Xml.XmlDocument();
            xmlDoc.Load(Server.MapPath(artvabas.CultureLanguage.GetCultureLanguageDataFile()));
            System.Xml.XmlNodeList dataNode = xmlDoc.GetElementsByTagName("about_data");
            System.Xml.XmlNode context;
            context = dataNode[0];
            Response.Write("<h2 id=\"title\">" + context["title"].InnerText + "</h2>");
        %>
        <section class="row" aria-labelledby="aboutTitle">
            <h1 id="aboutartvabasTitle">artvabas</h1>
            <%
                context = dataNode[1];
                Response.Write("<p class=\"lead\">" + context["paragraph"].InnerText + "</p>");
                context = dataNode[2];
                Response.Write("<h1 id=\"aboutGoal\">" + context["header"].InnerText + "</h1>");
                context = dataNode[3];
                Response.Write("<p class=\"lead\">" + context["paragraph"].InnerText + "</p>");
                context = dataNode[4];
                Response.Write("<a href=\"Donation.aspx\" class=\"link-info\">" + context["link_donation"].InnerText + ")</a></p>");
                context = dataNode[5];
                Response.Write("<h3 id=\"aboutGoalWhy\">" + context["header"].InnerText + "</h3>");
                context = dataNode[6];
                Response.Write("<p class=\"lead\">" + context["paragraph"].InnerText + "</p>");
                context = dataNode[7];
                Response.Write("<h1 id=\"aboutWhatKind\">" + context["header"].InnerText + "</h1>");
                context = dataNode[8];
                Response.Write("<p class=\"lead\">" + context["paragraph"].InnerText + "</p>");
                context = dataNode[9];
                Response.Write("<h4 id=\"aboutSeeAlso\">" + context["see_also_title"].InnerText + "</h4>");
            %>
            <p>
                <%
                    context = dataNode[10];
                    Response.Write("<a href=\"Getstarted.aspx\" class=\"btn btn-secondary btn-md\">" + context["see_also_button"].InnerText + " &raquo;</a>&nbsp;");
                    context = dataNode[11];
                    Response.Write("<a href=\"Aftercare.aspx\" class=\"btn btn-success btn-md\">" + context["see_also_button"].InnerText + " &raquo;</a>&nbsp;");
                    context = dataNode[12];
                    Response.Write("<a href=\"Donation.aspx\" class=\"btn btn-info btn-md\">" + context["see_also_button"].InnerText + " &raquo;</a>&nbsp;");
                %>
            </p>
        </section>
    </main>
</asp:Content>
