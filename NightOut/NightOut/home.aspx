<%@ Page Title="home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="NightOut.home" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1>Little <%: Title %> Us.</h1>
</hgroup>
        
   <asp:GridView ID="gvEvent" runat="server"></asp:GridView><br />
    <asp:Label ID="lblName" runat="server" Text="Name: "></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtName" runat="server"></asp:TextBox><br />

    <asp:Label ID="lbldescription" runat="server" Text="Description"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtDescrition" runat="server"></asp:TextBox><br />
    <asp:Label ID="lblTimeDate" runat="server" Text="TimeDate: "></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtTimeDate" runat="server"></asp:TextBox><br />
    <asp:Label ID="lblPrice" runat="server" Text="Price: "></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox><br />
    <asp:Label ID="lblOpeningHours" runat="server" Text="Opnening Hours: "></asp:Label>
    &nbsp;&nbsp;
    <asp:TextBox ID="txtOpeningHours" runat="server"></asp:TextBox>
    <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAddClick" Height="32px" />
    <br />
  
             <asp:Button ID="btnNext" runat="server" Text="Next" OnClick="btnNext_Click" Height="32px" />
  <input runat="server" id="hidId" type="hidden" />
    <asp:Button ID="btnPrev" runat="server" Text="Prev" OnClick="btnPrev_Click" Height="32px" />
    </asp:Content>
