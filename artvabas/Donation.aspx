<%@ Page Title="Donation" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Donation.aspx.cs" Inherits="artvabas.Donation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.</h2>
        <section class="row" aria-labelledby="aspnetTitle">
            <h1 id="donationTitle">Donation</h1>
            <p class="lead">
                This great service artvabas is offering you, doesn't cost much, a matter of fact its peanuts. We only asking a small donation for the effort
                artvabas have done for you, its more like a appreciation from you to artvabas:
            </p>
            <table class="table table-info" id="donationTable">
                <tr class="row d-table-row" style="font:xx-large; font-weight:bolder">
                    <td>&nbsp;One time Donation</td>
                    <td>Donation</td>
                </tr>
                <tr>
                    <td>&nbsp;Simple mobile/desktop/web application (for information and contact ability)</td>
                    <td>€20,00</td>
                </tr>
                <tr>
                    <td>&nbsp;Simple interactive mobile/desktop/web application (database driven)</td>
                    <td>€50,00</td>
                </tr>
                <tr>
                    <td>&nbsp;Full interactive mobile/desktop/web application (everything is possible)</td>
                    <td>100,00</td>
                </tr>
            </table>
            <h1 id="donationOtherCost">Other cost</h1>
            <p class="lead">
                Depend on the ability of your application, it can be that some network, often virtual, is required. Mostly these requirements are cloud based.
                If this is the case, it means that this have to be hired on monthly or yearly bases and/or payed as used. These cost are fully billed to you.
                You can decide to purchase this on your own or by artvabas. artvabas will not calculate profit on these cost, you pay what artvabas is paying. 
            </p>
             <p class="lead">
                What ever you choose it's up to you. If necessary artvabas will guide you with setting up the environment what is needed for the application to run.
            </p>
            <h4 id="aftercareSeeAlso">See also...</h4>
            <p>
                <a href="Getstarted.aspx" class="btn btn-secondary btn-md">Get started &raquo;</a>
                <a href="Aftercare.aspx" class="btn btn-success btn-md">Aftercare &raquo;</a>
            </p>
        </section>
    </main>
</asp:Content>
