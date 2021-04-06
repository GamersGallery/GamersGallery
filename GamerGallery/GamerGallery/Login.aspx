<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" MasterPageFile="~/Site.Master" Inherits="GamerGallery.Login2" %>

    
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
    Welcome to the login page
</h1>
    <h1 runat="server" style="text-align:center; font-family: Robotica; font-size: xx-large; text-transform: capitalize; color: #FFFFFF;">
    &nbsp;<asp:Image ID="Image1" runat="server" Height="246px" ImageUrl="~/Images/logo_images/Logo-clear-smaller.png" style="margin-left: 0px" Width="608px" />
</h1>


    <br />


    <asp:Label ID="Label_Username" runat="server" ForeColor="White" Text="Username"></asp:Label>

    <br />
    <asp:TextBox ID="Username" runat="server"  ToolTip="Please enter your Username"></asp:TextBox>

    <asp:RequiredFieldValidator ID="validateUsername" ControlToValidate="Username" runat="server" ErrorMessage="Please Enter A Username" ForeColor="White"></asp:RequiredFieldValidator>

    <br />
    <asp:Label ID="Label_Password" runat="server" ForeColor="White" Text="Password"></asp:Label>
    <br />
    <asp:TextBox ID="Password" runat="server" ToolTip="Please enter your Password" TextMode="Password"></asp:TextBox>

    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Password" ErrorMessage="Please Enter a Password" ForeColor="White"></asp:RequiredFieldValidator>

    <br />
    <asp:Button ID="Loginbutton" runat="server" Text="Login" Width="130px" OnClick="Loginbutton_Click" />
    <asp:Button ID="openIDLogin" runat="server" Text="Login with google" Width="130px" />

    <br />
    

</asp:Content>
