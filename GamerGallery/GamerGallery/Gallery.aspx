<%@ Page Title="Your Gallery" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Gallery.aspx.cs" Inherits="GamerGallery.Gallery" %>
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
      <div style="width: 100%; height: 400px; overflow: scroll">
         <div class="auto-style1">
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