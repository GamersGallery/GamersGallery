    <%@ Page Title="Your Gallery" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Gallery.aspx.cs" Inherits="GamerGallery.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
        <div runat="server" id="divGalleryGrid">
        <div style="width: 100%; height: 400px; overflow: scroll">
        <div style="background-image: url('file:///D:/Users/rbgnr/OneDrive/Pictures/Gamer%20Gallery/BackgroundV1.png')">

    <asp:TextBox ID="testTextbox" runat="server"></asp:TextBox>
    <asp:Button ID="testButton" runat="server" OnClick="testButtonClickEvent" Text="test json to table conversion" />
    <!--this button/textbox is purely for testing purposes, will be removed once Okta implementation is complete--->
    

            <br />
            <br />

            
    <asp:GridView ID="galleryGrid" runat="server" style="overflow: scroll">
    </asp:GridView>

    

            <br />
            </div>
        </div>
    <style>

        GalleryGrid{
            background-image: url(file:///D:/Users/rbgnr/OneDrive/Pictures/Gamer%20Gallery/BackgroundV1.png);
            background-repeat:no-repeat;
            background-attachment:fixed;      
        }
            
    </style>


        </div>
    </asp:Content>
