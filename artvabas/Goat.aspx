<%@ Page Title="Goat" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Goat.aspx.cs" Inherits="artvabas.Goat" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <section class="row" aria-labelledby="goatTitle">
            <h1>It's all about the goat</h1>
            <h2>What artvabas has been developed so far</h2>
            <p class="lead">
                Beside this web-page artvabas has developed some Window based applications, see the presentation bellow.
            </p>
        </section>
        <section aria-labelledby="fsdoctoolTitle">
            <asp:Wizard CssClass="avb-wizzard-size" ID="Wizard1" runat="server" FinishPreviousButtonType="Link" DisplaySideBar="False" CancelButtonType="Image" FinishCompleteButtonType="Link" StartNextButtonType="Link" StepNextButtonType="Link" StepPreviousButtonType="Link" FinishCompleteButtonText="">
               <WizardSteps>
                   <asp:WizardStep ID="WizardStepFSDocTool" runat="server">
                        <section class="col-md-4" aria-labelledby="fsdoctoolTitle">
                            <img class="avb-goat-cell-allign" src="Images/fsdoctool.png" />
                             <p class="card; avb-wizzard-paragraph-size">Field Service Documentation tool. Spacial made for field engineers, so that all the
                                 documentation, business applications and many other things are at one application. 
                             </p>
                        </section>
                   </asp:WizardStep>
                   <asp:WizardStep ID="WizardStepFSDocToolUpdate" runat="server">
                        <section class="col-md-4" aria-labelledby="fsdoctoolupaterTitle">
                            <img class="avb-goat-cell-allign" src="Images/fsupdater.png" />
                             <p class="card; avb-wizzard-paragraph-size">To make sure everything will keep up-to-date, artvabas also made an update application for the
                                 Field Service Documentation Tool what you saw in the previous picture.
                             </p>
                        </section>
                   </asp:WizardStep>
                   <asp:WizardStep ID="WizardStepFSDocToolUpdateOption" runat="server">
                        <section class="col-md-4" aria-labelledby="fsdoctoolupateroptionTitle">
                            <img class="avb-goat-cell-allign" src="Images/fsupdateroptions.png" />
                            <p class="card; avb-wizzard-paragraph-size">In this pictures you see the options dialog of the update application, as you can see artvabas
                                make sure everything is secured.
                            </p>
                        </section>
                   </asp:WizardStep>
                   <asp:WizardStep ID="WizardStepISAHelp" runat="server">
                        <section class="col-md-4" aria-labelledby="isahelpTitle">
                            <img class="avb-goat-cell-allign" src="Images/isahelp.png" />
                            <p class="card; avb-wizzard-paragraph-size">ISA help, ISA stands for International Spelling Alphabet. When user
                                enter a word or sentence, the application ISA help will show a list how to spell the word or sentence in NATO Phonetic Alphabet.
                                It even show how to pronounce the NATO Phonetic word.
                             </p>
                        </section>
                    </asp:WizardStep>
                    <asp:WizardStep ID="WizardStepFSWorkFlow" runat="server">
                        <section class="col-md-4" aria-labelledby="fsdworkflowTitle">
                            <img class="avb-goat-cell-allign" src="Images/fsworkflow.png" />
                            <p class="card; avb-wizzard-paragraph-size">Field Services Work flow application. Made for planning jobs for field services employees.
                             </p>
                        </section>
                    </asp:WizardStep>
               </WizardSteps>
           </asp:Wizard>
        </section>
       <section class="row" aria-labelledby="goatWhatsNew">
            <h1>Projects working on</h1>
            <h2>What artvabas is working on</h2>
            <p class="lead">
                CafeCare application; this will be C++ written application spacial made for a Repair Cafe. It will be used for maintaining
                customers, repair history, invoices, warehouse stock and much more.
            </p>
            <p class="lead">
                artvabasOS; when artvabas have some time left, artvabas is building its own Operating System, mainly programmed in assembly
                and C/C++ as supporting languages.
            </p>
            <p class="lead">
                And in the meantime the maintenance of this website.
            </p>
        </section>
    </main>
</asp:Content>
