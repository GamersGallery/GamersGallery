<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GamerGallery._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        body {background-color:#271850;}
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
        <p>Developed by Sutton Biddle, Zachary Hardin, Collin Sapp, and Ryan Bailey</p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Connect your Library</h2>
            <p>
                Using OpenID Authentication and the Steam web api, we allow you to connect your library to easily compare with your friends. You also have the ability to add custom games to your Gamer Gallery as well.
            </p>
            <p>
                <a class="btn btn-default" href="https://steamcommunity.com/dev">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Link with Friends</h2>
            <p>
                Using the friends list, you can easily access your friend&#39;s games to compare libraries. No more trying to figure out what games to play. Easily branch across platforms and start playing!</p>
            <p>
                <a class="btn btn-default" href="https://www.wikihow.com/Make-Friends">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Easy Filtering</h2>
            <p>
                You can easily filter your library. Want to play a certain type of game? Categorize them all by the same type. Whether it be an RPG or a Sandbox game, the power is in your hands to choose.
            </p>
            <p>
                <a class="btn btn-default" href="https://en.wikipedia.org/wiki/List_of_types_of_games">Learn more &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>
