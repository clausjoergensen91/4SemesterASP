<%@ Page Title="" Language="C#" MasterPageFile="~/mpDefault.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="MainWebApplication.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/customContact.css" rel="stylesheet" /> 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Main jumbotron for a primary marketing message or call to action -->
    <div class="jumbotron">
      <div class="container">
        <h1>Kontakt Bælum/Solbjerg Idrætsforenings fodboldafdeling</h1>
        <p>Her på siden kan du finde kontakt information på de forskellige ledere, trænere og bestyrelsesmedlemmer i BSIs fodboldafdeling.</p>
      </div>
    </div>

    <div id="Contact-coaches">
     <div class="container homepage">
      <!-- Example row of columns -->
      <h2>Kontakt trænere</h2>
         <hr />
      <div class="row">
        <div class="col-md-4">
          <span class="fa-stack fa-4x">
          <i class="fa fa-circle fa-stack-2x"></i>
          <i class="fa fa-mobile fa-stack-1x fa-inverse"></i>
          </span>
          <h3>Danny Jensen - serie 2</h3>
          <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
          <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
        </div>
        <div class="col-md-4">
          <span class="fa-stack fa-4x">
          <i class="fa fa-circle fa-stack-2x"></i>
          <i class="fa fa-mobile fa-stack-1x fa-inverse"></i>
          </span>
          <h3>Thomas Danmark - serie 4</h3>
          <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
          <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
       </div>
        <div class="col-md-4">
          <span class="fa-stack fa-4x">
          <i class="fa fa-circle fa-stack-2x"></i>
          <i class="fa fa-mobile fa-stack-1x fa-inverse"></i>
          </span>
          <h3>Thomas Svanholm - serie 6</h3>
          <p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
          <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
        </div>
      </div>
    </div>
   </div>

    <div id="Contact-board">
     <div class="container homepage">
      <!-- Example row of columns -->
      <h2>Kontakt bestyrelsen</h2>
         <hr />
      <div class="row">
        <div class="col-md-4">
          <span class="fa-stack fa-4x">
          <i class="fa fa-circle fa-stack-2x"></i>
          <i class="fa fa-paperclip fa-stack-1x fa-inverse"></i>
          </span>
          <h3>Jesper Kristensen</h3>
          <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
          <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
        </div>
        <div class="col-md-4">
          <span class="fa-stack fa-4x">
          <i class="fa fa-circle fa-stack-2x"></i>
          <i class="fa fa-paperclip fa-stack-1x fa-inverse"></i>
          </span>
          <h3>Thomas Petersen</h3>
          <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
          <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
       </div>
        <div class="col-md-4">
          <span class="fa-stack fa-4x">
          <i class="fa fa-circle fa-stack-2x"></i>
          <i class="fa fa-paperclip fa-stack-1x fa-inverse"></i>
          </span>
          <h3>Claus Jørgensen</h3>
          <p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
          <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
        </div>
      </div>
    </div>
    </div> <!-- /container -->
</asp:Content>
