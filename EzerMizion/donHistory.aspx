<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="donHistory.aspx.cs" Inherits="EzerMizion.donHistory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <td>
        <center>
            
            <asp:GridView ID="GridView2" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" ForeColor="Black" CellSpacing="2" Width="1103px" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="donSum" HeaderText="סכום תרומה" />
                    <asp:BoundField DataField="orgName" HeaderText=":תרם מטעם" />
                    <asp:BoundField DataField="donDate" DataFormatString="{0:d}" HeaderText="תאריך " />
                    <asp:BoundField DataField="id" HeaderText="תעודת זהות" />
                    <asp:BoundField DataField="firstName" HeaderText="שם פרטי" />
                    <asp:BoundField DataField="lastName" HeaderText="שם משפחה" />
                    <asp:BoundField DataField="donCode" HeaderText="קוד תרומה" />
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
            <a  href="AddDonor.aspx" >לתרומה לחץ כאן</a>
        </center>
        
    </td>
</asp:Content>

