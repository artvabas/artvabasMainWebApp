<%@ Page Title="Get Started" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GetStarted.aspx.cs" Inherits="artvabas.GetStarted" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.</h2>
        <section class="row" aria-labelledby="aspnetTitle">
            <h1 id="getstartedTitle">Goal</h1>
            <p class="lead">
                Before you let artvabas developing an application for you, you should ask yourself a question: "What purpose does the application
                have?" or "What will it bring to your customers, yourself or employees?"
            </p>
            <p class="lead">
                It is important to keep this in mind, because developing an application for the sake of having an application has no added value. 
                Of course, if you insist and want artvabas to develop an application with all your might, then of course artvabas will develop it for you. 
                Still, it is a shame if the application is "dusting" in, for example, on your device or in some kind of application store.
            </p>
            <h1 id="getstartedWhatKind">What kind</h1>
            <p class="lead">
                With the question of what the application should be able to do, who the end users of the application will be and what purpose the application has 
                it often becomes clear what kind of application will be built. This can be, for example; an application for the Windows platform (desktop/laptop/tabled),
                for the iPhone or iPad (iOS platform), an application that is suitable for the Android platform (mobile/tablet) , or can even be used on all the platforms.
            </p>
             <p class="lead">
                What is also possible is the development of a web application. The big advantage of a web application is that the platform can be used independently 
                and all you need is a recent browser and a somewhat decent Internet connection. Fortunately, we live in a world where that no longer has to be a problem, 
                both at home, on the road and in the office, everyone is on-line nowadays.
            </p>
            <h1 id="getstartedThen">Then...</h1>
            <p class="lead">
                After you have figured out, what kind and the purpose your application must be and have to do. You can contact artvabas by filling in
                the contact form on the 
                <a href="Contact.aspx" class="link-dark">contact page</a> 
                of this website.
            </p>
             <p class="lead">
                When artvabas received your request, artvabas will contact you for an interview about the application you want to be build. Then artvabas 
                will create some kind of blue-prints about your application, blue prints of; visualization, data/communication flows, external cost and any other if needed.
            </p>
            <p class="lead">
                When these blue-prints are finished, artvabas will make an appointment with you (and your other participations) to present the blue-prints. Keep in mind that
                these are just blue-prints and everything can be change. After your feedback, artvabas is going back to the draw table and changes the blue-print where needed.
                Then artvabas make a new appointment to present the adjusted blue-prints, if necessary small adjustment can be make. Then it's up to you
                to give artvabas the approval to develop your application.
            </p>
            <h1 id="getstartedDuringDevlopment">During development</h1>
            <p class="lead">
                After your approval and receiving your donation and payment of other cost, artvabas is starting to develop your application. During development
                you can on-line monitor the progress of your application. You even can anticipate on the progress by placing comments about the progress, issues 
                that need to be solved or let artvabas know that you want some minor changes.
            </p>
            <h1 id="getstartedTesting">Testing</h1>
            <p class="lead">
                After the development is done the alpha version of your application is ready for internal testing. Now bug reporting is one of the important
                things to do. ....
            </p>
            <h4 id="getstartedSeeAlso">See also...</h4>
            <p>
                <a href="Aftercare.aspx" class="btn btn-success btn-md">Aftercare &raquo;</a>
                <a href="Donation.aspx" class="btn btn-info btn-md">Donation &raquo;</a>
            </p>
        </section>
    </main>
</asp:Content>