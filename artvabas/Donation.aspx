<%@ Page Title="Donation" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Donation.aspx.cs" Inherits="artvabas.Donation" %>
<%--
    Using XML language data file to load content and Resonse.Writer to build up this page
    Licensed under MIT (https://github.com/artvabas/artvabasMainWebApp/blob/master/License)
    (c) 2023, artvabas'--%>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <% 
            System.Xml.XmlDocument xmlDoc = new System.Xml.XmlDocument();
            xmlDoc.Load(Server.MapPath(artvabas.CultureLanguage.GetCultureLanguageDataFile()));
            System.Xml.XmlNodeList dataNode = xmlDoc.GetElementsByTagName("donation_data");
            System.Xml.XmlNode context;
            context = dataNode[0];
            Response.Write("<h2 id=\"title\">" + context["title"].InnerText + "</h2>");
        %>
        <section class="row" aria-labelledby="donationTitle">
            <%
                context = dataNode[1];
                Response.Write("<h1 id=\"donationbenefactionTitle\">" + context["header"].InnerText + "</h1>");
                context = dataNode[2];
                Response.Write("<p class=\"lead\">" + context["paragraph"].InnerText + "</p>");
            %>
            <table class="table table-info" id="donationTable">
                <tr class="row d-table-row" style="font:xx-large; font-weight:bolder">
                    <%
                        context = dataNode[3];
                        Response.Write("<td>&nbsp;" + context["table-row"].InnerText + "</td>");
                        context = dataNode[4];
                        Response.Write("<td>" + context["table-row"].InnerText + "</td>");
                    %>
                </tr>
                <tr>
                     <%
                         context = dataNode[5];
                         Response.Write("<td>&nbsp;" + context["table-row"].InnerText + "</td>");
                         context = dataNode[6];
                         Response.Write("<td>" + context["table-row"].InnerText + "</td>");
                     %>
                </tr>
                <tr>
                    <%
                        context = dataNode[7];
                        Response.Write("<td>&nbsp;" + context["table-row"].InnerText + "</td>");
                        context = dataNode[8];
                        Response.Write("<td>" + context["table-row"].InnerText + "</td>");
                    %>
                </tr>
                <tr>
                     <%
                         context = dataNode[9];
                         Response.Write("<td>&nbsp;" + context["table-row"].InnerText + "</td>");
                         context = dataNode[10];
                         Response.Write("<td>" + context["table-row"].InnerText + "</td>");
                     %>
                </tr>
            </table>
            <%
                context = dataNode[11];
                Response.Write("<h1 id=\"donationOtherCost\">" + context["header"].InnerText + "</h1>");
                context = dataNode[12];
                Response.Write("<p class=\"lead\">" + context["paragraph"].InnerText + "</p>");
                context = dataNode[13];
                Response.Write("<p class=\"lead\">" + context["paragraph"].InnerText + "</p>");
                context = dataNode[14];
                Response.Write("<h4 id=\"donationSeeAlso\">" + context["see_also_title"].InnerText + "</h4>");
            %>
            <p>
                 <%
                     context = dataNode[15];
                     Response.Write("<a href=\"Getstarted.aspx\" class=\"btn btn-secondary btn-md\">" + context["see_also_button"].InnerText + " &raquo;</a>&nbsp;");
                     context = dataNode[16];
                     Response.Write("<a href=\"Aftercare.aspx\" class=\"btn btn-info btn-md\">" + context["see_also_button"].InnerText + " &raquo;</a>&nbsp;");
                 %>
            </p>
        </section>
    </main>
</asp:Content>
