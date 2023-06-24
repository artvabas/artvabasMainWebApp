﻿<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="artvabas.Contact" %>

<%@ Register Src="~/ContactControl.ascx" TagPrefix="uc1" TagName="ContactControl" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.</h2>
        <h3>How to contact.</h3>
         <section class="row" aria-labelledby="contactTitle">
            <h1 id="contacthowtoTitle">artvabas</h1>
            <p class="lead">
                under construction
            </p>
             <uc1:ContactControl runat="server" ID="ContactControl" />
            <h4 id="aboutSeeAlso">See also...</h4>
            <p>
                <a href="Getstarted.aspx" class="btn btn-secondary btn-md">Get started &raquo;</a>
                <a href="Aftercare.aspx" class="btn btn-success btn-md">Aftercare &raquo;</a>
                <a href="Donation.aspx" class="btn btn-info btn-md">Donation &raquo;</a>
            </p>
        </section>
    </main>
</asp:Content>
