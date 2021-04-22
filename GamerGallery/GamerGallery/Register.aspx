<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="GamerGallery.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
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
    <asp:TextBox ID="textBoxRegUsername" runat="server"  ToolTip="Please enter your Username" CssClass="btn-group-xs"></asp:TextBox>

    <asp:RequiredFieldValidator ID="validateUsername" ControlToValidate="textBoxRegUsername" runat="server" ErrorMessage="Please enter a username" ForeColor="White"></asp:RequiredFieldValidator>

    <br />
    <asp:Label ID="Label_Password" runat="server" ForeColor="White" Text="Password"></asp:Label>
    <br />
    <asp:TextBox ID="pass1" runat="server" ToolTip="Please enter your Password" TextMode="Password"></asp:TextBox>

    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="pass1" ErrorMessage="Please enter a password" ForeColor="White"></asp:RequiredFieldValidator>

     <br />
    <asp:Label ID="Label1" runat="server" ForeColor="White" Text="Confirm Password"></asp:Label>
    <br />
    <asp:TextBox ID="pass2" runat="server" ToolTip="Please enter your Password" TextMode="Password"></asp:TextBox>

    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="pass2" ErrorMessage="Please confirm your password" ForeColor="White"></asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="labelSteamID" runat="server" ForeColor="White" Text="SteamID"></asp:Label>

    <br />
    <asp:TextBox ID="textRegSteamID" runat="server"  ToolTip="Please enter your Username"  CssClass="btn-group-xs"></asp:TextBox>

    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="textRegSteamID" ErrorMessage="Please Enter a SteamId" ForeColor="White"></asp:RequiredFieldValidator>

    <br />
    <br />
    <asp:Button ID="btnReg" runat="server" Text="Register" Width="130px" OnClick="btnRegister" BackColor="#502DB0" BorderColor="#502DB0" BorderStyle="Outset" ForeColor="White" />
    <br />
    <br />
    <asp:Label ID="Validator" runat="server" ForeColor="Red"></asp:Label>

    <br />
    

</asp:Content>
