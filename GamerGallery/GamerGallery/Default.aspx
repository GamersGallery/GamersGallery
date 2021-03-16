<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GamerGallery._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Welcome to Gamer Gallery</h1>
        <p class="lead">Gamery Gallery is a web based library application that can connect gamers togethere that allows for gamers to connect with others that have similar titles in their libraries.</p>
        <p>&nbsp;</p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Connect your Library</h2>
            <p>
                Using OpenID Authentication and the Steam web api, we allow you to connect your library to easily compare with your friends. You also have the ability to add custom games to your Gamer Gallery as well.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301948">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Link with Friends</h2>
            <p>
                Using the friends list, you can easily access your friend&#39;s games to compare libraries. No more trying to figure out what games to play. Easily branch across platforms and start playing!</p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Web Hosting</h2>
            <p>
                You can easily find a web hosting company that offers the right mix of features and price for your applications.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>
