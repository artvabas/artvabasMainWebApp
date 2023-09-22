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
            <asp:Wizard ID="Wizard1" runat="server" FinishPreviousButtonType="Link" DisplaySideBar="False" CancelButtonType="Image" FinishCompleteButtonType="Link" StartNextButtonType="Link" StepNextButtonType="Link" StepPreviousButtonType="Link" FinishCompleteButtonText="">
               <WizardSteps>
                   <asp:WizardStep ID="WizardStep1" runat="server" Title="Step 1">
                        <section class="col-md-4" aria-labelledby="fsdoctoolTitle">
                            <img class="avb-goat-cell-allign" src="Images/fsdoctool.png" />
                             <p class="card">Field Service Documentation tool. Spacial made for field engineers, so that all the
                                 documentation, business applications and many other things are at one application. 
                             </p>
                        </section>
                   </asp:WizardStep>
                   <asp:WizardStep ID="WizardStep2" runat="server" Title="Step 2">
                        <section class="col-md-4" aria-labelledby="fsdoctoolupaterTitle">
                            <img class="avb-goat-cell-allign" src="Images/fsupdater.png" />
                             <p class="card">To make sure everything will keep up-to-date, artvabas also made an update application for the
                                 Field Service Documentation Tool what you saw in the previous picture.
                             </p>
                        </section>
                   </asp:WizardStep>
                   <asp:WizardStep ID="WizardStep3" runat="server" Title="Step 2">
                        <section class="col-md-4" aria-labelledby="fsdoctoolupateroptionTitle">
                            <img class="avb-goat-cell-allign" src="Images/fsupdateroptions.png" />
                            <p class="lead">In this pictures you see the options dialog of the update application, as you can see artvabas
                                make sure everything is secured.
                            </p>
                        </section>
                   </asp:WizardStep>
               </WizardSteps>
           </asp:Wizard>
        </section>
    </main>
</asp:Content>
