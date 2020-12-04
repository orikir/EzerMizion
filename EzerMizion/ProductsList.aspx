﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ProductsList.aspx.cs" Inherits="EzerMizion.ProductsList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .btnadding {
            border-width: medium;
            position: center;
            text-align: center;
            margin-top: 0%;
            border-radius: 1.5rem;
            padding: 0.5%;
            background: #000000;
            color: white;
            font-weight: 600;
            width: 20%;
            cursor: pointer;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <td>
        <center>
            <asp:GridView ID="GridView1" runat="server" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" AutoGenerateColumns="False" Width="921px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" ForeColor="Black" Height="729px" CellSpacing="2">
                <Columns>
                    <asp:BoundField DataField="proCode" HeaderText="קוד מוצר" ReadOnly="True" />
                    <asp:BoundField HeaderText="שם מוצר" DataField="proName" ReadOnly="true" />
                    <asp:CheckBoxField HeaderText="? האם במלאי" DataField="isInStock" ReadOnly="true" />
                    <asp:BoundField HeaderText="כמות" DataField="quantity" ReadOnly="true" />
                    <asp:BoundField HeaderText="קוד סניף" DataField="branchCode" ReadOnly="true" />
                    <asp:TemplateField HeaderText="תמונה">
                        <ItemTemplate>
                            <asp:Image ID="Image" runat="server" Width="100" Height="90" ImageUrl='<%# Eval ("proPhoto","Photos/{0}") %>' ReadOnly="true" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField HeaderText="מחיר" DataField="proPrice" />
                    <asp:CommandField ButtonType="Button" ShowEditButton="True" />
                    <asp:CommandField ButtonType="Button" ShowDeleteButton="True" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" CssClass="text-center" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <RowStyle BackColor="White" CssClass="text-center" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
            <asp:Button ID="addP" CssClass="btnadding" runat="server" Text="להוספת מוצר לחץ כאן" OnClick="addP_Click" />
        </center>
    </td>

</asp:Content>
