<%@ Page Title="Aftercare" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Aftercare.aspx.cs" Inherits="artvabas.Aftercare" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <% 
            System.Xml.XmlDocument xmlDoc = new System.Xml.XmlDocument();
            xmlDoc.Load(Server.MapPath(artvabas.CultureLanguage.GetCultureLanguageDataFile()));
            System.Xml.XmlNodeList dataNode = xmlDoc.GetElementsByTagName("aftercare_data");
            System.Xml.XmlNode context;
            context = dataNode[0];
            Response.Write("<h2 id=\"title\">" + context["title"].InnerText + "</h2>");
        %>
        <section class="row" aria-labelledby="aftercareTitle">
            <%
                context = dataNode[1];
                Response.Write("<h1 id=\"aftercareguaranteeTitle\">" + context["header"].InnerText + "</h1>");
                context = dataNode[2];
                Response.Write("<p class=\"lead\">" + context["paragraph"].InnerText + "</p>");
            %>
            <table class="table table-info" id="aftercareGuarenteeTable">
                <tr class="row d-table-row" style="font:xx-large; font-weight:bolder">
                    <%
                        context = dataNode[3];
                        Response.Write("<td>&nbsp;" + context["table-row"].InnerText + "</td>");
                        context = dataNode[4];
                        Response.Write("<td>" + context["table-row"].InnerText + "</td>");
                        context = dataNode[5];
                        Response.Write("<td>" + context["table-row"].InnerText + "</td>");
                    %>
                </tr>
                <tr>
                    <%
                        context = dataNode[6];
                        Response.Write("<td>&nbsp;" + context["table-row"].InnerText + "</td>");
                        context = dataNode[7];
                        Response.Write("<td>" + context["table-row"].InnerText + "</td>");
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
                        context = dataNode[11];
                        Response.Write("<td>" + context["table-row"].InnerText + "</td>");
                    %>
                </tr>
                <tr>
                    <%
                        context = dataNode[12];
                        Response.Write("<td>&nbsp;" + context["table-row"].InnerText + "</td>");
                        context = dataNode[13];
                        Response.Write("<td>" + context["table-row"].InnerText + "</td>");
                        context = dataNode[14];
                        Response.Write("<td>" + context["table-row"].InnerText + "</td>");
                    %>
                </tr>
                <tr>
                    <%
                        context = dataNode[15];
                        Response.Write("<td>&nbsp;" + context["table-row"].InnerText + "</td>");
                        context = dataNode[16];
                        Response.Write("<td>" + context["table-row"].InnerText + "</td>");
                        context = dataNode[17];
                        Response.Write("<td>" + context["table-row"].InnerText + "</td>");
                    %>
                </tr>
                <tr>
                    <%
                        context = dataNode[18];
                        Response.Write("<td>&nbsp;" + context["table-row"].InnerText + "</td>");
                        context = dataNode[19];
                        Response.Write("<td>" + context["table-row"].InnerText + "</td>");
                        context = dataNode[20];
                        Response.Write("<td>" + context["table-row"].InnerText + "</td>");
                    %>
                </tr>
                <tr>
                    <%
                        context = dataNode[21];
                        Response.Write("<td>&nbsp;" + context["table-row"].InnerText + "</td>");
                        context = dataNode[22];
                        Response.Write("<td>" + context["table-row"].InnerText + "</td>");
                        context = dataNode[23];
                        Response.Write("<td>" + context["table-row"].InnerText + "</td>");
                    %>
               </tr>
                <tr>
                    <%
                        context = dataNode[24];
                        Response.Write("<td>&nbsp;" + context["table-row"].InnerText + "</td>");
                        context = dataNode[25];
                        Response.Write("<td>" + context["table-row"].InnerText + "</td>");
                        context = dataNode[26];
                        Response.Write("<td>" + context["table-row"].InnerText + "</td>");
                    %>
               </tr>
            </table>
            <%
                context = dataNode[27];
                Response.Write("<h1 id=\"aftercareMaintenance\">" + context["header"].InnerText + "</h1>");
                context = dataNode[28];
                Response.Write("<p class=\"lead\">" + context["paragraph_start"].InnerText);
                context = dataNode[29];
                Response.Write("<a href=\"Donation.aspx\" class=\" link-info\">" + context["link"].InnerText + "</a>");
                context = dataNode[30];
                Response.Write(context["paragraph_end"].InnerText);
            %>
             <table class="table table-info" id="aftercareMaintenanceTable">
                <tr class="row d-table-row" style="font:xx-large; font-weight:bolder">
                    <%
                        context = dataNode[31];
                        Response.Write("<td>&nbsp;" + context["table-row"].InnerText + "</td>");
                        context = dataNode[32];
                        Response.Write("<td>" + context["table-row"].InnerText + "</td>");
                        context = dataNode[33];
                        Response.Write("<td>" + context["table-row"].InnerText + "</td>");
                        context = dataNode[34];
                        Response.Write("<td>" + context["table-row"].InnerText + "</td>");
                    %>
                </tr>
                <tr>
                    <%
                        context = dataNode[35];
                        Response.Write("<td>&nbsp;" + context["table-row"].InnerText + "</td>");
                        context = dataNode[36];
                        Response.Write("<td>" + context["table-row"].InnerText + "</td>");
                        context = dataNode[37];
                        Response.Write("<td>" + context["table-row"].InnerText + "</td>");
                        context = dataNode[38];
                        Response.Write("<td>" + context["table-row"].InnerText + "</td>");
                    %>
                </tr>
                <tr>
                    <%
                        context = dataNode[39];
                        Response.Write("<td>&nbsp;" + context["table-row"].InnerText + "</td>");
                        context = dataNode[40];
                        Response.Write("<td>" + context["table-row"].InnerText + "</td>");
                        context = dataNode[41];
                        Response.Write("<td>" + context["table-row"].InnerText + "</td>");
                        context = dataNode[42];
                        Response.Write("<td>" + context["table-row"].InnerText + "</td>");
                    %>
                </tr>
                <tr>
                    <%
                        context = dataNode[43];
                        Response.Write("<td>&nbsp;" + context["table-row"].InnerText + "</td>");
                        context = dataNode[44];
                        Response.Write("<td>" + context["table-row"].InnerText + "</td>");
                        context = dataNode[45];
                        Response.Write("<td>" + context["table-row"].InnerText + "</td>");
                        context = dataNode[46];
                        Response.Write("<td>" + context["table-row"].InnerText + "</td>");
                    %>
                </tr>
                <tr>
                    <%
                        context = dataNode[47];
                        Response.Write("<td>&nbsp;" + context["table-row"].InnerText + "</td>");
                        context = dataNode[48];
                        Response.Write("<td>" + context["table-row"].InnerText + "</td>");
                        context = dataNode[49];
                        Response.Write("<td>" + context["table-row"].InnerText + "</td>");
                        context = dataNode[50];
                        Response.Write("<td>" + context["table-row"].InnerText + "</td>");
                    %>
                </tr>
                <tr>
                    <%
                        context = dataNode[51];
                        Response.Write("<td>&nbsp;" + context["table-row"].InnerText + "</td>");
                        context = dataNode[52];
                        Response.Write("<td>" + context["table-row"].InnerText + "</td>");
                        context = dataNode[53];
                        Response.Write("<td>" + context["table-row"].InnerText + "</td>");
                        context = dataNode[54];
                        Response.Write("<td>" + context["table-row"].InnerText + "</td>");
                    %>
                </tr>
                <tr>
                    <%
                        context = dataNode[55];
                        Response.Write("<td>&nbsp;" + context["table-row"].InnerText + "</td>");
                        context = dataNode[56];
                        Response.Write("<td>" + context["table-row"].InnerText + "</td>");
                        context = dataNode[57];
                        Response.Write("<td>" + context["table-row"].InnerText + "</td>");
                        context = dataNode[58];
                        Response.Write("<td>" + context["table-row"].InnerText + "</td>");
                    %>
                </tr>
                <tr>
                    <%
                        context = dataNode[59];
                        Response.Write("<td>&nbsp;" + context["table-row"].InnerText + "</td>");
                        context = dataNode[60];
                        Response.Write("<td>" + context["table-row"].InnerText + "</td>");
                        context = dataNode[61];
                        Response.Write("<td>" + context["table-row"].InnerText + "</td>");
                        context = dataNode[62];
                        Response.Write("<td>" + context["table-row"].InnerText + "</td>");
                    %>
                </tr>
                <tr>
                    <%
                        context = dataNode[63];
                        Response.Write("<td>&nbsp;" + context["table-row"].InnerText + "</td>");
                        context = dataNode[64];
                        Response.Write("<td>" + context["table-row"].InnerText + "</td>");
                        context = dataNode[65];
                        Response.Write("<td>" + context["table-row"].InnerText + "</td>");
                        context = dataNode[66];
                        Response.Write("<td>" + context["table-row"].InnerText + "</td>");
                    %>
                </tr>
                <tr>
                    <%
                        context = dataNode[67];
                        Response.Write("<td>&nbsp;" + context["table-row"].InnerText + "</td>");
                        context = dataNode[68];
                        Response.Write("<td>" + context["table-row"].InnerText + "</td>");
                        context = dataNode[69];
                        Response.Write("<td>" + context["table-row"].InnerText + "</td>");
                        context = dataNode[70];
                        Response.Write("<td>" + context["table-row"].InnerText + "</td>");
                    %>
                </tr>
                <tr style="font:xx-large; font-weight:bolder">
                    <%
                        context = dataNode[71];
                        Response.Write("<td>&nbsp;" + context["table-row"].InnerText + "</td>");
                        context = dataNode[72];
                        Response.Write("<td>" + context["table-row"].InnerText + "</td>");
                        context = dataNode[73];
                        Response.Write("<td>" + context["table-row"].InnerText + "</td>");
                        context = dataNode[74];
                        Response.Write("<td>" + context["table-row"].InnerText + "</td>");
                    %>
                </tr>
            </table>
            <%
                context = dataNode[75];
                Response.Write("<h4 id=\"aftercareSeeAlso\">" + context["see_also_title"].InnerText + "</h4>");
            %>
            <p>
                <%
                    context = dataNode[76];
                    Response.Write("<a href=\"Getstarted.aspx\" class=\"btn btn-secondary btn-md\">" + context["see_also_button"].InnerText + " &raquo;</a>&nbsp;");
                    context = dataNode[77];
                    Response.Write("<a href=\"Donation.aspx\" class=\"btn btn-info btn-md\">" + context["see_also_button"].InnerText + " &raquo;</a>&nbsp;");
                %>
            </p>
        </section>
    </main>
</asp:Content>
