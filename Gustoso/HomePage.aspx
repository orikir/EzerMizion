<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="Gustoso.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   <style>
body {
  background-image: url('photos/table2.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: 70% 70%;
}
</style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
  
  <div id="nav-placeholder">
  </div>
    <script>
    $(function () {
        $("#nav-placeholder").load("Nav.html");
    }); 

    </script>
    
</asp:Content>
