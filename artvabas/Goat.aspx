<%@ Page Title="Goat" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Goat.aspx.cs" Inherits="artvabas.Goat" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <section class="row" aria-labelledby="goatTitle">
            <h1>Goat</h1>
            <h2>What artvabas has developed</h2>
            <p class="lead">
                Ja sat wete wwee niet
            </p>
        </section>
        <section aria-labelledby="fsdoctoolTitle">
            <asp:Wizard ID="Wizard1" runat="server" FinishPreviousButtonType="Link" DisplaySideBar="False" CancelButtonType="Image" FinishCompleteButtonType="Link" StartNextButtonType="Link" StepNextButtonType="Link" StepPreviousButtonType="Link" FinishCompleteButtonText="">
               <WizardSteps>
                   <asp:WizardStep ID="WizardStep1" runat="server" Title="Step 1">
                        <section class="col-md-4" aria-labelledby="fsdoctoolTitle">
                            <img class="avb-goat-cell-allign" src="Images/fsdoctool.png" />
                             <p class="lead">&nbsp;Hallo</p>
                        </section>
                   </asp:WizardStep>
                   <asp:WizardStep ID="WizardStep2" runat="server" Title="Step 2">
                        <section class="col-md-4" aria-labelledby="fsdoctoolupaterTitle">
                            <img class="avb-goat-cell-allign" src="Images/fsupdater.png" />
                             <p class="lead">&nbsp;Hallo</p>
                        </section>
                   </asp:WizardStep>
                   <asp:WizardStep ID="WizardStep3" runat="server" Title="Step 2">
                        <section class="col-md-4" aria-labelledby="fsdoctoolupaterTitle">
                            <img class="avb-goat-cell-allign" src="Images/fsupdateroptions.png" />
                            <p class="lead">&nbsp;Hallo</p>
                        </section>
                   </asp:WizardStep>
               </WizardSteps>
           </asp:Wizard>
        </section>
    </main>
</asp:Content>
