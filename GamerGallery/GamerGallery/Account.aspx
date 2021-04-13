<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Account.aspx.cs" Inherits="GamerGallery.Account" %>

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
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Account Settings</title>

</head>
<body>
     <div style="background-color:#222222;">
            <h1 style="text-align:center; font-family: Robotica; font-size: xx-large; text-transform: capitalize; color: #FFFFFF;">
                Account Settings
            </h1>
            <p>Username: 
                <asp:Label ID="usernameLabel" runat="server" Text="Username goes here"></asp:Label>
                <br />
               Password: 
                <asp:Label ID="passwordLabel" runat="server"></asp:Label>
                <asp:RadioButton ID="RadioButton1" runat="server" OnCheckedChanged="RadioButton1_CheckedChanged" />
                Show Password<br />
               SteamID: 
            <asp:Label ID="steamIdLabel" runat="server" Text="If you are seeing this I messed up :("></asp:Label>
            </p>
            <p>Proceed to the Gallery -</p>
            <p>Logout - 
            </p>
        </div>
    </form>
</body>
</html>
</asp:Content>
