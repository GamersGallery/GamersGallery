<%@ Page Title="Your Gallery" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Gallery.aspx.cs" Inherits="GamerGallery.Contact" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   <div runat="server" id="divGalleryGrid">
      <style>
         @font-face {
         font-family: Robotica;
         src: url(fonts/Robotica.ttf);
         }
         body {
         background-color: #502db0;
         }
      </style>
      <asp:Image ID="Image1" runat="server" Height="246px" ImageUrl="~/Images/logo_images/Logo-clear-smaller.png" Style="margin-left: 0px" Width="608px" ImageAlign="Middle" />
      <br />
      <br />
      <asp:TextBox ID="testTextbox" runat="server" Width="228px"></asp:TextBox>
      <asp:Button ID="testButton" runat="server" OnClick="testButtonClickEvent" Text="test json to table conversion" />
      <div style="width: 100%; height: 400px; overflow: scroll">
         <div class="auto-style1">
            <!--this button/textbox is purely for testing purposes, will be removed once Okta implementation is complete--->
            <br />
            <br />
            <asp:GridView ID="galleryGrid" runat="server" CssClass="auto-style2" ForeColor="White" HorizontalAlign="Center" Width="1087px" 
                style="
               background-repeat: no-repeat;
               background-attachment: fixed;
               font-family: Robotica;
               ">
                <AlternatingRowStyle Font-Bold="False" />
               <EditRowStyle ForeColor="White" />
               <RowStyle BorderColor="White"/>
            </asp:GridView>
            <br />
         </div>
      </div>
   </div>
</asp:Content>