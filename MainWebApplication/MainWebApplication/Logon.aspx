<%@ Page Title="" Language="C#" MasterPageFile="~/mpDefault.Master" AutoEventWireup="true" CodeBehind="Logon.aspx.cs" Inherits="MainWebApplication.Logon" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/logonCustom.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Main jumbotron for a primary marketing message or call to action -->
    <div class="col-lg-12">
      <div class="container">
        <h1>Log in</h1>
        <fieldset>
            <label for="txtUsername">Brugernavn:</label> 
            <input type="text" name="txtUsername" /><br />
            
            <label for="txtPassword">Password:</label> 
            <input type="text" name="txtUsername" /><br />

            
        </fieldset>
          <a class="btn btn-primary btn-lg" id="buttonSubmit" href="#" role="button">Log på &raquo;</a>
      </div>
    </div>

    <div class="container">
      
    </div> <!-- /container -->
</asp:Content>
