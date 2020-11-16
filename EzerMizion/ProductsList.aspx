<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ProductsList.aspx.cs" Inherits="EzerMizion.ProductsList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" AutoGenerateColumns="False" Width="547px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Height="1061px">
        <Columns>
            <asp:BoundField HeaderText="קוד מוצר"  DataField="proCode" ReadOnly="true" />
            <asp:BoundField HeaderText="שם מוצר" DataField="proName" ReadOnly="true"/>
            <asp:CheckBoxField HeaderText="האם במלאי?" DataField="isInStock" ReadOnly="true" />
            <asp:BoundField HeaderText="כמות" DataField="quantity" ReadOnly="true"/>
            <asp:BoundField HeaderText="קוד סניף" DataField="branchCode" ReadOnly="true"/>
            <asp:TemplateField HeaderText="תמונה" >
                <ItemTemplate>
                    <asp:Image ID="Image" runat="server" Width="200" Height="190" ImageUrl='<%# Eval ("proPhoto","Photos/{0}") %>' ReadOnly="true"/>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField HeaderText="מחיר" DataField="proPrice" />
            <asp:CommandField ButtonType="Button" ShowEditButton="True"   />
        </Columns>
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#242121" />
    </asp:GridView>
</asp:Content>
