<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="boneMarrow.aspx.cs" Inherits="EzerMizion.boneMarrow" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .vStyle {
            direction: rtl;
            color: white
        }

        .by {
            margin: 2% 0 2% 0
        }

        body {
            background-image: url('Photos/bG.png');
            background-size: 170%;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <center>
    
     <div class="by">
        <asp:Button ID="Button1" runat="server" Text="חיפוש" OnClick="byBlood" ForeColor="Red" />
        <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            <asp:ListItem>כל התורמים</asp:ListItem>
            <asp:ListItem>O+</asp:ListItem>
            <asp:ListItem>O-</asp:ListItem>
            <asp:ListItem>A+</asp:ListItem>
            <asp:ListItem>A-</asp:ListItem>
            <asp:ListItem>B+</asp:ListItem>
            <asp:ListItem>B-</asp:ListItem>
            <asp:ListItem>AB+</asp:ListItem>
            <asp:ListItem>AB-</asp:ListItem>
        </asp:DropDownList>
        <asp:Label ID="Label1" class="vStyle" runat="server" Text=":חפש לפי סוג דם"></asp:Label>
    </div>
    <div class="by">
        <asp:Button ID="Button2" runat="server" Text="עידכון טבלה" OnClick="update_Click" ForeColor="Red" />
    </div>
    <asp:GridView ID="GridView1"  runat="server" BackColor="White"   OnRowCommand="GridView1_RowCommand"  BorderColor="Black" width="1000px" BorderStyle="None" BorderWidth="1px" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" CellPadding="4" >
        <Columns>
            
            <asp:BoundField DataField="donDate" DataFormatString="{0:d}" HeaderText="תאריך שינוי סטטוס" />
            <asp:BoundField DataField="phoneNum" DataFormatString="" HeaderText="מספר טלפון" />
            <asp:BoundField DataField="birthday" DataFormatString="{0:d}" HeaderText="תאריך לידה" />
            <asp:BoundField DataField="lastName" HeaderText="שם משפחה" />
            <asp:BoundField DataField="firstName" HeaderText="שם פרטי" />
            <asp:BoundField DataField="bloodType" HeaderText="סוג דם" />
            <asp:BoundField DataField="donStatus" HeaderText="סטטוס" />
            <asp:BoundField DataField="donId"  HeaderText="תעודת זהות" />
            <asp:BoundField DataField="donCOde" HeaderText="קוד תורם" />
            <asp:ButtonField ButtonType="Button"  Text="עדכון סטטוס" />
        </Columns>
        <FooterStyle BackColor="#99CCCC" CssClass="text-center" ForeColor="Red" />
        <HeaderStyle BackColor="Red"  Font-Bold="True" CssClass="text-center" ForeColor="white" />
        <PagerStyle BackColor="#99CCCC"  ForeColor="black" CssClass="text-center" HorizontalAlign="center" />
        <RowStyle BackColor="White" CssClass="text-center" ForeColor="black" />
        <SelectedRowStyle BackColor="gray" Font-Bold="True" CssClass="text-center" ForeColor="white" />
        <SortedAscendingCellStyle BackColor="#EDF6F6" />
        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
        <SortedDescendingCellStyle BackColor="#D6DFDF" />
        <SortedDescendingHeaderStyle BackColor="#002876" />
        </asp:GridView>
    </center>
    </div>


</asp:Content>
