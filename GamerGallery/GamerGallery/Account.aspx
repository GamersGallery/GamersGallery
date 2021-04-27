<%@ Page Title="Your Account" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Account.aspx.cs" Inherits="GamerGallery.Account" %>

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
<html>
<head>
    <title>Account Settings</title>

</head>
<body>
     <div style="background-color:#222222;">
            <h1 style="text-align:center; font-family: Robotica; font-size: xx-large; text-transform: capitalize; color: #FFFFFF;">
                Account Settings
            </h1>
            <p style="text-align:center">Username: 
                <asp:Label ID="usernameLabel" runat="server" Text="Error username not found"></asp:Label>
                <br />
               SteamID: 
            <asp:Label ID="steamIdLabel" runat="server" Text="Error SteamID not found"></asp:Label>
            </p>
            <p>Proceed to the Gallery -<asp:Button ID="btnGallery" runat="server" ForeColor="White" OnClick="btnGallery_Click" Text="Gallery" BackColor="#502DB0" BorderColor="#222222" BorderStyle="Outset" />
            </p>
            <p>Logout - 
                <asp:Button ID="btnLogout" runat="server" ForeColor="White" OnClick="btnLogout_Click" Text="Logout" BackColor="#502DB0" BorderColor="#222222" BorderStyle="Outset" />
            </p>
        </div>
    </form>
</body>
</html>
</asp:Content>
