<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="NightOut.About" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1>Little <%: Title %> Us.</h1>
      
    </hgroup>

    <article>
        <h3>Mission</h3>
        <p>        
            Our mission is to provide description of events which happens around you, upcoming events as well as past events with our follower reviews about them. 
        </p>
        <h3>Target audiance</h3>
        <p>        
            We provide information about event which are for different age and different audienace tastes of music and lots of other events.
        </p>
        <h3>Future</h3>
        <p>        
            We currently working on improving our services to become one of the leading services in this industry, as well user friendly, where will be options to pre order the tickets, and lot more.. follow us and you will find out.. 
        </p>
    </article>

    <aside>
        <h3>Follow us</h3>
        <p>        
            You can follow us on following websites:
        </p>
        <ul>
            <li><a runat="server" href="#">Google</a></li>
            <li><a runat="server" href="#">Facebook</a></li>
            <li><a runat="server" href="#">Twitter</a></li>
            
        </ul>
    </aside>
</asp:Content>