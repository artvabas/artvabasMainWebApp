<%@ Page Title="Goat" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Goat.aspx.cs" Inherits="artvabas.Goat" %>
<%--
    Using XML language data file to load content and Resonse.Writer to build up this page
    Licensed under MIT (https://github.com/artvabas/artvabasMainWebApp/blob/master/License)
    (c) 2023, artvabas'--%>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
    <%
        System.Xml.XmlDocument xmlDoc = new System.Xml.XmlDocument();
        xmlDoc.Load(Server.MapPath(artvabas.CultureLanguage.GetCultureLanguageDataFile()));
        System.Xml.XmlNodeList dataNode = xmlDoc.GetElementsByTagName("goat_data");
        System.Xml.XmlNode context;
        context = dataNode[0];
        Response.Write("<h2 id=\"title\">" + context["title"].InnerText + "</h2>");
    %>
        <section class="row" aria-labelledby="goatTitle">
            <%
                context = dataNode[1];
                Response.Write("<h1 id=\"goatWhatDevelopedTitle\">" + context["header"].InnerText + "</h1>");
                context = dataNode[2];
                Response.Write("<p class=\"lead\">" + context["paragraph"].InnerText + "</p>");
            %>
        </section>
        <section aria-labelledby="fsdoctoolTitle">
            <asp:Wizard CssClass="avb-wizard-size" ID="WizardWhatDevelopedPresentation" runat="server" FinishPreviousButtonType="Link" DisplaySideBar="False" CancelButtonType="Image" FinishCompleteButtonType="Link" StartNextButtonType="Link" StepNextButtonType="Link" StepPreviousButtonType="Link" FinishCompleteButtonText="" StepPreviousButtonText="<<--" StepNextButtonText="-->>" StartNextButtonText=">>" FinishPreviousButtonText="<<">
                <WizardSteps>
                   <asp:WizardStep ID="WizardStepFSDocTool" runat="server">
                        <section class="col-md-4" aria-labelledby="fsdoctoolTitle">
                            <img class="avb-goat-cell-allign" src="Images/fsdoctool.png" />
                            <%
                                System.Xml.XmlDocument xmlDoc = new System.Xml.XmlDocument();
                                xmlDoc.Load(Server.MapPath(artvabas.CultureLanguage.GetCultureLanguageDataFile()));
                                System.Xml.XmlNodeList dataNode = xmlDoc.GetElementsByTagName("goat_data");
                                System.Xml.XmlNode context;
                                context = dataNode[3];
                                Response.Write("<p class=\"card; avb-wizard-paragraph-size\">" + context["wizard_paragraph"].InnerText + "</p>");
                            %>
                        </section>
                   </asp:WizardStep>
                   <asp:WizardStep ID="WizardStepFSDocToolUpdate" runat="server">
                        <section class="col-md-4" aria-labelledby="fsdoctoolupaterTitle">
                            <img class="avb-goat-cell-allign" src="Images/fsupdater.png" />
                            <%
                                System.Xml.XmlDocument xmlDoc = new System.Xml.XmlDocument();
                                xmlDoc.Load(Server.MapPath(artvabas.CultureLanguage.GetCultureLanguageDataFile()));
                                System.Xml.XmlNodeList dataNode = xmlDoc.GetElementsByTagName("goat_data");
                                System.Xml.XmlNode context;
                                context = dataNode[4];
                                Response.Write("<p class=\"card; avb-wizard-paragraph-size\">" + context["wizard_paragraph"].InnerText + "</p>");
                            %>
                        </section>
                   </asp:WizardStep>
                   <asp:WizardStep ID="WizardStepFSDocToolUpdateOption" runat="server">
                        <section class="col-md-4" aria-labelledby="fsdoctoolupateroptionTitle">
                            <img class="avb-goat-cell-allign" src="Images/fsupdateroptions.png" />
                            <%
                                System.Xml.XmlDocument xmlDoc = new System.Xml.XmlDocument();
                                xmlDoc.Load(Server.MapPath(artvabas.CultureLanguage.GetCultureLanguageDataFile()));
                                System.Xml.XmlNodeList dataNode = xmlDoc.GetElementsByTagName("goat_data");
                                System.Xml.XmlNode context;
                                context = dataNode[5];
                                Response.Write("<p class=\"card; avb-wizard-paragraph-size\">" + context["wizard_paragraph"].InnerText + "</p>");
                            %>
                        </section>
                   </asp:WizardStep>
                   <asp:WizardStep ID="WizardStepISAHelp" runat="server">
                        <section class="col-md-4" aria-labelledby="isahelpTitle">
                            <img class="avb-goat-cell-allign" src="Images/isahelp.png" />
                            <%
                                System.Xml.XmlDocument xmlDoc = new System.Xml.XmlDocument();
                                xmlDoc.Load(Server.MapPath(artvabas.CultureLanguage.GetCultureLanguageDataFile()));
                                System.Xml.XmlNodeList dataNode = xmlDoc.GetElementsByTagName("goat_data");
                                System.Xml.XmlNode context;
                                context = dataNode[6];
                                Response.Write("<p class=\"card; avb-wizard-paragraph-size\">" + context["wizard_paragraph"].InnerText + "</p>");
                            %>
                        </section>
                    </asp:WizardStep>
                    <asp:WizardStep ID="WizardStepFSWorkFlow" runat="server">
                        <section class="col-md-4" aria-labelledby="fsdworkflowTitle">
                            <img class="avb-goat-cell-allign" src="Images/fsworkflow.png" />
                            <%
                                System.Xml.XmlDocument xmlDoc = new System.Xml.XmlDocument();
                                xmlDoc.Load(Server.MapPath(artvabas.CultureLanguage.GetCultureLanguageDataFile()));
                                System.Xml.XmlNodeList dataNode = xmlDoc.GetElementsByTagName("goat_data");
                                System.Xml.XmlNode context;
                                context = dataNode[7];
                                Response.Write("<p class=\"card; avb-wizard-paragraph-size\">" + context["wizard_paragraph"].InnerText + "</p>");
                            %>
                        </section>
                    </asp:WizardStep>
               </WizardSteps>
           </asp:Wizard>
        </section>
       <section class="row" aria-labelledby="goatWhatsNew">
           <%
               context = dataNode[8];
               Response.Write("<h2 id=\"goatWhatWorkingOnTitle\">" + context["header"].InnerText + "</h2>");
               context = dataNode[9];
               Response.Write("<p class=\"lead\">" + context["paragraph"].InnerText + "</p>");
               context = dataNode[10];
               Response.Write("<p class=\"lead\">" + context["paragraph"].InnerText + "</p>");
               context = dataNode[11];
               Response.Write("<p class=\"lead\">" + context["paragraph"].InnerText + "</p>");
           %>
        </section>
    </main>
</asp:Content>
