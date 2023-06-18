<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="artvabas.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.</h2>
        <section class="row" aria-labelledby="aspnetTitle">
            <h1 id="aboutTitle">artvabas</h1>
            <p class="lead">
                artvabas isn't a company, organization or a institution. artvabas is a individual who has worked as ICT Manager and as Software Engineer
                for the last 30 years. artvabas love to build software and solving ICT related issues.  
            </p>
            <h1 id="aboutGoal">Goal</h1>
             <p class="lead">
                 artvabas goal is to help non-profit organizations and individuals with their software and ICT related ideas or issues. This on a semi
                 non-profit basis, the only thing artvabas is asking is a small donation for your appreciation. If there are needs of any kind of 
                 Internet related services, such as hosting databases or cloud related networks etc. those cost are fully billed to you, without any profit 
                 from our side (see also 
                 <a href="Donation.aspx" class="link-info">Donations</a>).
             </p>
            <h3 id="aboutGoalWhy">Why?</h3>
            <p class="lead">
                Because lots of non-profit organizations, such as; sport clubs, public organization, public movement, foundation of public utility, public institution,
                various foundations etc. often cope with poor quality of software or ICT related structures. The main reason for this is often money or the knowledge.
                They often don't have the ability to hire professionals for developing the software they need or for other ICT related solutions. And it is always
                good to give something back to the society, thats why artvabas is volunteering.
            </p>
            <h1 id="aboutWhatKind">What kind</h1>
             <p class="lead">
                 artvabas can develop and maintain all kinds of; mobile (phone, tablet), desktop and web applications. But also databases, IoT (Internet of Things) and
                 cloud solutions. 
             </p>
            <h4 id="aboutSeeAlso">See also...</h4>
            <p>
                <a href="Getstarted.aspx" class="btn btn-secondary btn-md">Get started &raquo;</a>
                <a href="Aftercare.aspx" class="btn btn-success btn-md">Aftercare &raquo;</a>
                <a href="Donation.aspx" class="btn btn-info btn-md">Donation &raquo;</a>
            </p>
        </section>
    </main>
</asp:Content>
