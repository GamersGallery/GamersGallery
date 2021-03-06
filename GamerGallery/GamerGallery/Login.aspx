﻿<%@ Page Title="Login" Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" MasterPageFile="~/Site.Master" Inherits="GamerGallery.Login2" %>

    
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
            font-size: 18px;
        }
        * {
            font-family: Consolas;
        }
       

    </style>
<h1 runat="server" style="text-align:center; font-family: Robotica; font-size: xx-large; text-transform: capitalize; color: #FFFFFF;">
    Welcome to the login page
</h1>
    <h1 runat="server" style="text-align:center; font-family: Robotica; font-size: xx-large; text-transform: capitalize; color: #FFFFFF;">
    &nbsp;<asp:Image ID="Image1" runat="server" Height="246px" ImageUrl="~/Images/logo_images/Logo-clear-smaller.png" style="margin-left: 0px" Width="608px" />
</h1>


    <br />

    <h2>
    <asp:Label ID="Label_Username" runat="server" ForeColor="White" Text="Username"></asp:Label>

    <br />
    <asp:TextBox ID="textBoxUsername" runat="server"  ToolTip="Please enter your Username" CssClass="btn-group-xs" BorderStyle="Inset" BackColor="#999999" BorderColor="#333333"></asp:TextBox>

    </h2>
<h2>

    <asp:RequiredFieldValidator ID="validateUsername" ControlToValidate="textBoxUsername" runat="server" ErrorMessage="Please Enter A Username" ForeColor="White"></asp:RequiredFieldValidator>

    </h2>
<h2>

    <br />
    <asp:Label ID="Label_Password" runat="server" ForeColor="White" Text="Password"></asp:Label>
    <br />
    <asp:TextBox ID="textBoxPass" runat="server" ToolTip="Please enter your Password" TextMode="Password" BorderStyle="Inset" CssClass="btn-group-xs" BackColor="#999999" BorderColor="#333333"></asp:TextBox>

    </h2>
<h2>

    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="textBoxPass" ErrorMessage="Please Enter a Password" ForeColor="White"></asp:RequiredFieldValidator>

    </h2>
<h2>

    <br />
    <asp:Button ID="Loginbutton" runat="server" Text="Login" Width="130px" OnClick="Loginbutton_Click" BackColor="#502DB0" BorderColor="#502DB0" BorderStyle="Outset" ForeColor="White" />
    <br />
    <br />
    <asp:Label ID="Validator" runat="server" ForeColor="Red"></asp:Label>

    <br />
    </h2>

</asp:Content>
