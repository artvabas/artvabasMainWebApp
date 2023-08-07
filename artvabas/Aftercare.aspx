<%@ Page Title="Aftercare" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Aftercare.aspx.cs" Inherits="artvabas.Aftercare" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.</h2>
         <section class="row" aria-labelledby="aftercareTitle">
            <h1 id="aftercareguaranteeTitle">Guarantee</h1>
            <p class="lead">
                After artvabas have deliver your application, what happened then? artvabas will give you two years of guarantee.
                What does this mean:
            </p>
            <table class="table table-info" id="aftercareGuarenteeTable">
                <tr class="row d-table-row" style="font:xx-large; font-weight:bolder">
                    <td>&nbsp;Guarantee</td>
                    <td>First Year</td>
                    <td>Second Year</td>
                </tr>
                <tr>
                    <td>&nbsp;Small improvements existing content (e.g. changing text/color of controls or other contents)</td>
                    <td>X</td>
                    <td>X</td>
                </tr>
                <tr>
                    <td>&nbsp;Large improvement existing content (e.g. changing page/view layout)</td>
                    <td>X</td>
                    <td></td>
                </tr>
                <tr>
                    <td>&nbsp;Related network/communication fixes</td>
                    <td>X</td>
                    <td>X</td>
                </tr>
                <tr>
                    <td>&nbsp;Related network/communication major changes on related parts (e.g. changing databases/network environment)</td>
                    <td>X</td>
                    <td></td>
                </tr>
                <tr>
                    <td>&nbsp;Bug fixes (software related)</td>
                    <td>X</td>
                    <td>X</td>
                </tr>
                <tr>
                    <td>&nbsp;Security fixes on related parts</td>
                    <td>X</td>
                    <td>X</td>
               </tr>
                <tr>
                    <td>&nbsp;Major security changes on related parts</td>
                    <td>X</td>
                    <td></td>
               </tr>
            </table>
            <h1 id="aftercareMaintenance">Maintenance</h1>
             <p class="lead">
                 After two years of guarantee it's up to you what you want to do. From nothing to getting advantages from one of the maintenance programs
                 artvabas have offer you. All are on donation base (see also 
                 <a href="Donation.aspx" class=" link-info">Donations</a>), keep in mind; the maintenance programs are only for software what artvabas
                 have developed and for hardware, network and communication related parts, what is needed for the software to run correctly and is under supervision by artvabas.
             </p>
             <table class="table table-info" id="aftercareMaintenanceTable">
                <tr class="row d-table-row" style="font:xx-large; font-weight:bolder">
                    <td>&nbsp;Maintenance program</td>
                    <td>Basic</td>
                    <td>Normal</td>
                    <td>Premium</td>
                </tr>
                <tr>
                    <td>&nbsp;Small improvements existing content (e.g. changing text/color of controls or other contents)</td>
                    <td></td>
                    <td>X</td>
                    <td>X</td>
                </tr>
                <tr>
                    <td>&nbsp;Large improvement existing content (e.g. changing page/view layout)</td>
                    <td></td>
                    <td></td>
                    <td>X</td>
                </tr>
                <tr>
                    <td>&nbsp;Related network/communication fixes</td>
                    <td></td>
                    <td>X</td>
                    <td>X</td>
                </tr>
                <tr>
                    <td>&nbsp;Related network/communication major changes on related parts (e.g. changing databases/network environment)</td>
                    <td></td>
                    <td></td>
                    <td>X</td>
                </tr>
                <tr>
                    <td>&nbsp;Bug fixes (software related)</td>
                    <td>X</td>
                    <td>X</td>
                    <td>X</td>
                </tr>
                <tr>
                    <td>&nbsp;Security fixes on related parts</td>
                    <td>X</td>
                    <td>X</td>
                    <td>X</td>
                </tr>
                <tr>
                    <td>&nbsp;Major security changes on related parts</td>
                    <td></td>
                    <td></td>
                    <td>X</td>
                </tr>
                <tr>
                    <td>&nbsp;Adding improvements on existing content, new releases</td>
                    <td></td>
                    <td>X</td>
                    <td>X</td>
                </tr>
                <tr>
                    <td>&nbsp;Adding new improvements/ content, new releases</td>
                    <td></td>
                    <td></td>
                    <td>X</td>
                </tr>
                <tr style="font:xx-large; font-weight:bolder">
                    <td>&nbsp;Yearly donation</td>
                    <td>€20,00</td>
                    <td>€50,00</td>
                    <td>€100,00</td>
                </tr>
            </table>
            <h4 id="aftercareSeeAlso">See also...</h4>
            <p>
                <a href="Getstarted.aspx" class="btn btn-secondary btn-md">Get started &raquo;</a>
                <a href="Donation.aspx" class="btn btn-info btn-md">Donation &raquo;</a>
            </p>
        </section>
    </main>
</asp:Content>
