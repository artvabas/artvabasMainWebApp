<%@ Page Title="artvabas" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="artvabas.Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main>
        <section class="row" aria-labelledby="defaultTitle">
            <% 
                System.Xml.XmlDocument xmlDoc = new System.Xml.XmlDocument();
                xmlDoc.Load(Server.MapPath(artvabas.CultureLanguage.GetCultureLanguageDataFile()));
                System.Xml.XmlNodeList dataNode = xmlDoc.GetElementsByTagName("default_data");
                System.Xml.XmlNode context;
                context = dataNode[0];
                Response.Write("<h1 id=\"defaultsoftwaresulutionsTitle\">" + context["header"].InnerText + "</h1>");
                context = dataNode[1];
                Response.Write("<p class=\"lead\">" + context["paragraph"].InnerText);
                context = dataNode[2];
                Response.Write("<p class=\"lead\">" + context["paragraph"].InnerText);
                context = dataNode[3];
                Response.Write("<p class=\"lead\">" + context["paragraph"].InnerText);
            %>
            <p>
                <%
                    context = dataNode[4];
                    Response.Write("<a href=\"About.aspx\" class=\"btn btn-primary btn-md\">" + context["button_link"].InnerText + " &raquo;</a>&nbsp;");
                %>
            </p>
        </section>
        <div class="row">
            <section class="col-md-4" aria-labelledby="gettingStartedTitle">
                <%
                    context = dataNode[5];
                    Response.Write("<h2 id=\"gettingStartedTitle\">" + context["header"].InnerText + "</h2>");
                    context = dataNode[6];
                    Response.Write("<p>" + context["paragraph"].InnerText);
                %>
                <p>
                    <%
                        context = dataNode[7];
                        Response.Write("<a class=\"link-secondary\" href=\"GetStarted.aspx\"\">" + context["link"].InnerText + " &raquo;</a>");
                    %>
                </p>
            </section>
            <section class="col-md-4" aria-labelledby="aftercareTitle">
                <%
                    context = dataNode[8];
                    Response.Write("<h2 id=\"aftercareTitle\">" + context["header"].InnerText + "</h2>");
                    context = dataNode[9];
                    Response.Write("<p>" + context["paragraph"].InnerText);
                %>
                <p>
                    <%
                        context = dataNode[10];
                        Response.Write("<a class=\"link-success\" href=\"Aftercare.aspx\"\">" + context["link"].InnerText + " &raquo;</a>");
                    %>
                </p>
            </section>
            <section class="col-md-4" aria-labelledby="donationTitle">
                <%
                    context = dataNode[11];
                    Response.Write("<h2 id=\"donationTitle\">" + context["header"].InnerText + "</h2>");
                    context = dataNode[12];
                    Response.Write("<p>" + context["paragraph"].InnerText);
                %>
                <p>
                    <%
                        context = dataNode[13];
                        Response.Write("<a class=\"link-info\" href=\"Donation.aspx\"\">" + context["link"].InnerText + " &raquo;</a>");
                    %>
                </p>
            </section>
        </div>
    </main>
</asp:Content>