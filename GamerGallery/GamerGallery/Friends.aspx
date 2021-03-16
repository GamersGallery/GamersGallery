<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Friends.aspx.cs" Inherits="GamerGallery.Friends" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Friends List</title>
</head>
<body>
    <style type="text/css">
        body 
        {
            background-color: #585858;
            color: white;

        }
        .auto-style1 {
            width: 62px;
            height: 79px;
        }
    </style>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Label ID="friendLabel" runat="server" Text="Add a Friend:"></asp:Label>
        <asp:TextBox ID="friendSearchBox" runat="server"></asp:TextBox>
        <asp:Button ID="searchButton" runat="server" Text="Search" />
        <p>
            <img class="auto-style1" src="Images/friends%20icon.png" /><asp:Label ID="Label1" runat="server" Text="Ignilious - 24 shared games"></asp:Label>
        </p>
        <p>
            <img class="auto-style1" src="Images/friends%20icon.png" /><asp:Label ID="Label2" runat="server" Text="PBHotdog - 18 shared games"></asp:Label>
        </p>
        <p>
            <img class="auto-style1" src="Images/friends%20icon.png" /><asp:Label ID="Label3" runat="server" Text="McFlargon - 6 shared games"></asp:Label>
        </p>
        <p>
            <img class="auto-style1" src="Images/friends%20icon.png" /><asp:Label ID="Label4" runat="server" Text="Zachary_Peculier - 7 shared games"></asp:Label>
        </p>
    </form>
</body>
</html>
