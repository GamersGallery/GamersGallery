<%@ Page Title="Your Gallery" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Gallery.aspx.cs" Inherits="GamerGallery.Gallery" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   <div runat="server" id="divGalleryGrid">
       <p class="auto-style1">
      <style>
         @font-face {
         font-family: Robotica;
         src: url(fonts/Robotica.ttf);
         }
         body {
         background-color: #502db0;
         }
          .auto-style1 {
              margin-left: 40px;
          }
          .fixcenter{
              display: block;
              margin-left: auto;
              margin-right: auto;
              width: 50%;
          }
      </style>
      <asp:Image ID="Image1" class="fixcenter" runat="server" Height="246px" ImageUrl="~/Images/logo_images/Logo-clear-smaller.png"/>
      <br class="auto-style1" />
      <br class="auto-style1" />
       </p>
      <div style="width: 100%; height: 400px; overflow: scroll">
         <div class="auto-style1">
             <br />
&nbsp;&nbsp;
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
             <asp:Button ID="sortByGameTitle" runat="server" BackColor="#502DB0" BorderColor="#222222" BorderStyle="Outset" ForeColor="White" Text="Game Title" Width="90px" OnClick="sortByGameTitle_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:Button ID="sortByCrossplay" runat="server" BackColor="#502DB0" BorderColor="#222222" BorderStyle="Outset" ForeColor="White" Text="Crossplay" Width="90px" OnClick="sortByCrossplay_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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