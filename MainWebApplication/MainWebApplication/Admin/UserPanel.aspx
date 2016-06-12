<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.Master" AutoEventWireup="true" CodeBehind="UserPanel.aspx.cs" Inherits="MainWebApplication.Admin.UserPanel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Main jumbotron for a primary marketing message or call to action -->
    <div class="jumbotron">
      <div class="container">
        <h1>Bruger Panel!</h1>
        <p>Brug denne side til at oprette, slette eller opdaterer nuværende brugere.</p>
      </div>
    </div>

    <div class="container">
      <!-- Example row of columns -->
      <div class="row">
        <div class="col-md-4">
          <h2>Opret ny bruger</h2>
            <p>Brugernavn:</p>
            <asp:TextBox ID="textUsername" runat="server"></asp:TextBox>
            <p>Password:</p>
            <asp:TextBox ID="textPassword" runat="server"></asp:TextBox>
            <p>Fornavn:</p>
            <asp:TextBox ID="textFirstname" runat="server"></asp:TextBox>
            <p>Efternavn:</p>
            <asp:TextBox ID="textLastName" runat="server"></asp:TextBox>
            <p>Email:</p>
            <asp:TextBox ID="textEmail" runat="server"></asp:TextBox>
            <p>Type:</p>
            <asp:TextBox ID="textType" runat="server"></asp:TextBox>
            <p>Admin privilegie:</p>
            <asp:TextBox ID="textAdmin" runat="server"></asp:TextBox><hr />
            <asp:Button id="btnCreate" runat="server" OnClick="btnCreate_click" Text="Opret bruger"/>
        </div>
        <div class="col-md-4">
          <h2>Slet eksisterende bruger</h2>
            <p>Indtast email på den bruger der ønskes slettet</p><hr />
            <p>Email:</p>
            <asp:TextBox ID="textEmailDelete" runat="server"></asp:TextBox><hr />
            <asp:Button id="btnDelete" runat="server" OnClick="btnDelete_click" Text="Slet bruger"/>
       </div>
        <div class="col-md-4">
          <h2>Opdatér nuværende bruger</h2>
            <p>Nuværende Fornavn</p>
            <asp:TextBox ID="TextOldFN" runat="server"></asp:TextBox>
            <p>Nuværende Efternavn</p>
            <asp:TextBox ID="TextOldLN" runat="server"></asp:TextBox>
            <p>Nyt Brugernavn:</p>
            <asp:TextBox ID="TextUsernameUpdate" runat="server"></asp:TextBox>
            <p>Nyt Password:</p>
            <asp:TextBox ID="TextPasswordUpdate" runat="server"></asp:TextBox>
            <p>Nyt Fornavn:</p>
            <asp:TextBox ID="TextFirstnameUpdate" runat="server"></asp:TextBox>
            <p>Nyt Efternavn:</p>
            <asp:TextBox ID="TextLastnameUpdate" runat="server"></asp:TextBox>
            <p>Nyt Email:</p>
            <asp:TextBox ID="TextEmailUpdate" runat="server"></asp:TextBox>
            <p>Nyt Type:</p>
            <asp:TextBox ID="TextTypeUpdate" runat="server"></asp:TextBox>
            <p>Nyt Admin privilegie:</p>
            <asp:TextBox ID="TextAdminUpdate" runat="server"></asp:TextBox><hr />
            <asp:Button id="btnUpdateUser" runat="server" OnClick="btnUpdate_click" Text="Opdatér bruger"/>
        </div>
      </div>
    </div> <!-- /container -->
</asp:Content>
