<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Gallery.aspx.cs" Inherits="GamerGallery.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        table, th, td {
            border: 1px solid grey;
            border-collapse: collapse;
            text-align: center;
        }
        #GalleryTable{
            width: 100%;
            background-color: #9f6eb1;
        }
        
    </style>
    <table style="width:100%;" id="GalleryTable">
        <tr>          
            <th>Shared</th>
            <th>Game</th>
            <th>Original System</th>
            <th>Multiplayer Capacity</th>
            <th>Crossplay Systems</th>
            <th>Genre</th>
        </tr>
        <tr>
            <td style="height: 5px"></td>
            <td style="height: 5px"></td>
            <td style="height: 5px"></td>
            <td style="height: 5px"></td>
            <td style="height: 5px"></td>
            <td style="height: 5px"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
