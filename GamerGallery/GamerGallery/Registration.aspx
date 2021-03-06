﻿<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Registration.aspx.cs" Inherits="GamerGallery.Registration" %>

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
<h1 runat="server" style="text-align:center; font-family: Robotica; font-size: xx-large; text-transform: capitalize; color: #FFFFFF;">
    Welcome to the Registration page
</h1>
    <h1 runat="server" style="text-align:center; font-family: Robotica; font-size: xx-large; text-transform: capitalize; color: #FFFFFF;">
    &nbsp;<asp:Image ID="Image1" runat="server" Height="246px" ImageUrl="~/Images/logo_images/Logo-clear-smaller.png" style="margin-left: 0px" Width="608px" />
</h1>


    <br />


    <asp:Label ID="Label_Username" runat="server" ForeColor="White" Text="Username"></asp:Label>

    <br />
    <asp:TextBox ID="textBoxRegUsername" runat="server"  ToolTip="Please enter your Username" OnTextChanged="Username_TextChanged1" CssClass="btn-group-xs"></asp:TextBox>

    <asp:RequiredFieldValidator ID="validateUsername" ControlToValidate="textBoxUsername" runat="server" ErrorMessage="Please Enter A Username" ForeColor="White"></asp:RequiredFieldValidator>

    <br />
    <asp:Label ID="Label_Password" runat="server" ForeColor="White" Text="Password"></asp:Label>
    <br />
    <asp:TextBox ID="textBoxRegPass" runat="server" ToolTip="Please enter your Password" TextMode="Password"></asp:TextBox>

    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="textBoxPass" ErrorMessage="Please Enter a Password" ForeColor="White"></asp:RequiredFieldValidator>

    <br />
    <asp:Label ID="labelSteamID" runat="server" ForeColor="White" Text="Username"></asp:Label>

    <br />
    <asp:TextBox ID="textRegSteamID" runat="server"  ToolTip="Please enter your Username" OnTextChanged="Username_TextChanged1" CssClass="btn-group-xs"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="btnReg" runat="server" Text="Register" Width="130px" OnClick="btnRegister" BackColor="#502DB0" BorderColor="#502DB0" BorderStyle="Outset" ForeColor="White" />
    <br />
    <br />
    <asp:Label ID="Validator" runat="server" ForeColor="Red"></asp:Label>

    <br />
    

</asp:Content>