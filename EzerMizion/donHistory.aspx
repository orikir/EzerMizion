<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="donHistory.aspx.cs" Inherits="EzerMizion.donHistory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <asp:TextBox ID="text1" runat="server"></asp:TextBox>
    <asp:Button ID="click" runat="server" Text="Button"  OnClick="button_Click" />
    <asp:GridView ID="GridView1" runat="server"></asp:GridView>
     <asp:GridView ID="GridView2" runat="server"></asp:GridView>
</asp:Content>

