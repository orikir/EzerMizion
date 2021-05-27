<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="donHistory.aspx.cs" Inherits="EzerMizion.donHistory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .design {
            margin-top: 2%
        }

        .h3d {
            margin-top: 2%
        }

        body {
            background-image: url('Photos/bG.png');
            background-size: 120%;
            color: white;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
        <h3 class="h3d">היסטוריית תרומות</h3>
            <asp:GridView ID="GridView2" runat="server" CssClass="design" BackColor="#CCCCCC" BorderColor="White" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" ForeColor="Black" CellSpacing="2" Width="1103px" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="donSum" HeaderText="סכום תרומה" />
                    <asp:BoundField DataField="orgName" HeaderText=":תרם מטעם" />
                    <asp:BoundField DataField="donDate" DataFormatString="{0:d}" HeaderText="תאריך " />
                    <asp:BoundField DataField="id" HeaderText="תעודת זהות" />
                    <asp:BoundField DataField="firstName" HeaderText="שם פרטי" />
                    <asp:BoundField DataField="lastName" HeaderText="שם משפחה" />
                    <asp:BoundField DataField="donCode" HeaderText="קוד תרומה" />
                </Columns>
                <FooterStyle BackColor="Red" />
                <HeaderStyle BackColor="Red" Font-Bold="True" ForeColor="White" CssClass="text-center" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <RowStyle BackColor="#f0f0f0" CssClass="text-center" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
      </center>
</asp:Content>

