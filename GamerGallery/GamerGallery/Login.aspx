<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="GamerGallery.Login2" %>

<!DOCTYPE html>
    
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            position: fixed;
            left: 51%;
            top: 15px;
            width: 734px;
            height: 289px;
        }
        body {
            background-color: #271850;
        }
    </style>
</head>
<body>
    
    <form id="form1" runat="server" >
        <asp:Image ID="ggLoginImage" runat="server" BorderStyle="None" ImageAlign="AbsMiddle" ImageUrl="~/Images/logo_images/Logo-clear-smaller.png" CssClass="auto-style1" style="position:fixed; left:27%; top:16%"/>
        <asp:TextBox ID="usernameText" runat="server" style="position:fixed; left:45%; top:60%;" OnTextChanged="Username_TextChanged"></asp:TextBox>
        <asp:TextBox ID="Password" runat="server" style="position:fixed; left:45%; top:65%"></asp:TextBox>
        <asp:Label ID="usernameLabel" runat="server" Text="Username" style="position:fixed; left:45%; top:58%; color:white;"></asp:Label>
        <asp:Label ID="passwordLabel" runat="server" Text="Password" style="position:fixed; left:45%; top:63%; color:white;"></asp:Label>
    </form>
</body>
</html>
