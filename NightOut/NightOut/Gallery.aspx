<%@ Page Title="Gallery" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Gallery.aspx.cs" Inherits="NightOut.Gallery" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1>Little <%: Title %> Us.</h1>
      
    </hgroup>

   
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:Timer ID="Timer1" runat="server" Interval="2000" OnTick="Timer1_Tick"></asp:Timer>
              <asp:Image ID="Image1" Height ="400px"  runat="server" />

        </ContentTemplate>
    </asp:UpdatePanel>
       
        <h3>Future updates</h3>
        <p>        
            In the near future we will unable upload optoin of the pics, that you can share them with us and the rest of the followers
        </p>
        
  
    

</asp:Content>