<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LandingPage.aspx.cs" Inherits="GamerGallery._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        body {background-color:#502db0;}
        .row {background-color:darkgrey;}
        .col-md-4 {background-color:#502db0;}
        .lead, h1 {color:black;
                   text-align: center;
                   color: aliceblue;
        }      
        h2,p {
            text-align: center;
            color: aliceblue;
        }
        .jumbotron{
            background-color: #313131;
            text-align: center;
        }

    </style>
    <div>
    <div class="jumbotron">
        <h1 style="color: aliceblue">Welcome to Gamer Gallery</h1>
        <p class="lead">Gamery Gallery is a web based library application that allows gamers to connect and see who they can play games with.</p>
        <p style="color: aliceblue;">Developed by Sutton Biddle, Zachary Hardin, Collin Sapp, and Ryan Bailey</p>
        <asp:Button ID="registerButton" runat="server" CssClass="btn active" ForeColor="White" Text="Register" OnClick="btnRegClick" BackColor="#502DB0" BorderStyle="Inset" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="loginButton" runat="server" CssClass="btn active" ForeColor="White" Text="Login" OnClick="btnLogClick" BackColor="#502DB0" BorderStyle="Inset" />

    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Connect your Library</h2>
            <p>
                Using the Steam web api, we allow you to connect your library to easily compare with your friends.
            </p>
            <p>
                &nbsp;</p>
        </div>
        <div class="col-md-4">
            <h2>More info about Games</h2>
            <p>
                Features we have implemented allow you to see your cross platform games. Easily to get info!</p>
            <p>
                &nbsp;</p>
        </div>
        <div class="col-md-4">
            <h2>Easy Filtering</h2>
            <p>
                Filter your games with the click of a button. All in the same place.</p>
            <p>
                &nbsp;</p>
        </div>
        <div class="col-md-4">
            <asp:Image ID="steamImage" runat="server" ImageUrl="~/Images/Steam_icon_logo.png" Width="200px" style="display: block;
              margin-left: auto;
              margin-right: auto;"/>
            <br />
        </div>
        <div class="col-md-4">
            <asp:Image ID="crossPlatImage" runat="server" ImageUrl="~/Images/cross_plat_image.png" Width="344px" style="display: block;
              margin-left: auto;
              margin-right: auto;"/>
            <br />
            <br />
        </div>
        <div class="col-md-4">
           <asp:Image ID="filterImage" runat="server" ImageUrl="~/Images/Steam_icon_logo.png" Width="200px" style="display: block;
              margin-left: auto;
              margin-right: auto;"/>
            <br />
        </div>
    </div>
        </div>

</asp:Content>
