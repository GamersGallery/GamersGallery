﻿<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LandingPage.aspx.cs" Inherits="GamerGallery._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        body {background-color:#502db0;}
        .row {background-color:darkgrey;}
        .col-md-4 {background-color:mediumpurple;}
        .lead, h1 {color:black;
                   text-align: center;
        }
        h2,p {
            text-align: center;
            color: aliceblue;
        }

    </style>
    <div class="jumbotron">
        <h1>Welcome to Gamer Gallery</h1>
        <p class="lead">Gamery Gallery is a web based library application that can connect gamers togethere that allows for gamers to connect with others that have similar titles in their libraries.</p>
        <p style="color: mediumpurple;">Developed by Sutton Biddle, Zachary Hardin, Collin Sapp, and Ryan Bailey</p>
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
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/Steam_icon_logo.png" Width="200px" style="display: block;
              margin-left: auto;
              margin-right: auto;
              width 50%;"/>
            <br />
        </div>
        <div class="col-md-4">
            <asp:Image ID="Image2" runat="server" />
        </div>
        <div class="col-md-4">
            <asp:Image ID="Image3" runat="server" />
        </div>
    </div>
    <div>
        <div class="jumbotron" style="background-color:#080808;">
            <h2> Ready to get into the action? Register or Login below</h2>
            <p> 
                <asp:Button ID="Button1" runat="server" CssClass="btn focus" ForeColor="Black" Text="Register" OnClick="Button1_Click" />
                <asp:Button ID="Button2" runat="server" CssClass="alert" ForeColor="Black" Text="Login" OnClick="Button1_Click" />
            </p>
        </div>
        <br />
    </div>

</asp:Content>
