<%@ Page Title="Get Started" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GetStarted.aspx.cs" Inherits="artvabas.GetStarted" %>
<%--
    Using XML language data file to load content and Resonse.Writer to build up this page
    Licensed under MIT (https://github.com/artvabas/artvabasMainWebApp/blob/master/License)
    (c) 2023, artvabas'--%>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <% 
            System.Xml.XmlDocument xmlDoc = new System.Xml.XmlDocument();
            xmlDoc.Load(Server.MapPath(artvabas.CultureLanguage.GetCultureLanguageDataFile()));
            System.Xml.XmlNodeList dataNode = xmlDoc.GetElementsByTagName("getstarted_data");
            System.Xml.XmlNode context;
            context = dataNode[0];
            Response.Write("<h2 id=\"title\">" + context["title"].InnerText + "</h2>");
        %>
        <section class="row" aria-labelledby="getsartedTitle">
            <%
                context = dataNode[1];
                Response.Write("<h1 id=\"getstartedgoalTitle\">" + context["header"].InnerText + "</h1>");

                context = dataNode[2];
                Response.Write("<p class=\"lead\">" + context["paragraph"].InnerText + "</p>");
                context = dataNode[3];
                Response.Write("<p class=\"lead\">" + context["paragraph"].InnerText + "</p>");

                context = dataNode[4];
                Response.Write("<h1 id=\"getstartedWhatKind\">" + context["header"].InnerText + "</h1>");

                context = dataNode[5];
                Response.Write("<p class=\"lead\">" + context["paragraph"].InnerText + "</p>");
                context = dataNode[6];
                Response.Write("<p class=\"lead\">" + context["paragraph"].InnerText + "</p>");

                context = dataNode[7];
                Response.Write("<h1 id=\"getstartedThen\">" + context["header"].InnerText + "</h1>");

                context = dataNode[8];
                Response.Write("<p class=\"lead\">" + context["paragraph_start"].InnerText + "<a href=\"Contact.aspx\" class=\"link-dark\">");
                context = dataNode[9];
                Response.Write(context["link"].InnerText + "</a>");
                context = dataNode[10];
                Response.Write("&nbsp;" + context["paragraph_end"].InnerText + "</p>");
                context = dataNode[11];
                Response.Write("<p class=\"lead\">" + context["paragraph"].InnerText + "</p>");
                context = dataNode[12];
                Response.Write("<p class=\"lead\">" + context["paragraph"].InnerText + "</p>");

                context = dataNode[13];
                Response.Write("<h1 id=\"getstartedDuringDevlopment\">" + context["header"].InnerText + "</h1>");

                context = dataNode[14];
                Response.Write("<p class=\"lead\">" + context["paragraph"].InnerText + "</p>");

                context = dataNode[15];
                Response.Write("<h1 id=\"getstartedTesting\">" + context["header"].InnerText + "</h1>");

                context = dataNode[16];
                Response.Write("<p class=\"lead\">" + context["paragraph_start"].InnerText + "<a href=\"Aftercare.aspx\" class=\"link-success\">");
                context = dataNode[17];
                Response.Write(context["link"].InnerText + "</a>");
                context = dataNode[18];
                Response.Write("&nbsp;" + context["paragraph_end"].InnerText + "</p>");

                context = dataNode[19];
                Response.Write("<h4 id=\"getstartedSeeAlso\">" + context["see_also_title"].InnerText + "</h4>");
            %>
            <p>
                <%
                    context = dataNode[20];
                    Response.Write("<a href=\"Aftercare.aspx\" class=\"btn btn-success btn-md\">" + context["see_also_button"].InnerText + " &raquo;</a>&nbsp;");
                    context = dataNode[21];
                    Response.Write("<a href=\"Donation.aspx\" class=\"btn btn-info btn-md\">" + context["see_also_button"].InnerText + " &raquo;</a>&nbsp;");
                %>
            </p>
        </section>
    </main>
</asp:Content>