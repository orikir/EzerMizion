﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="Gustoso.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
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
