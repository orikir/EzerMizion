<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="DonationsList.aspx.cs" Inherits="EzerMizion.DonationsList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .btnDonCh {
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

        .m {
            margin: 1% 5% 1% 5%;
        }

        .byDate {
            margin: 2.5%;
        }

        body {
            background-image: url('Photos/bG.png');
            background-size: 170%;
            color: white;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <td>
        <center>
            <div class="byDate">
                
                <asp:Button ID="Button1" runat="server" Text="חיפוש" OnClick="byDate" ForeColor="Red" />
                <asp:TextBox ID="TextBox2" runat="server"  TextMode="Date"></asp:TextBox>
                <asp:Label ID="Label3" class=" vStyle" runat="server" Text="תאריך התחלה"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server"  TextMode="Date"></asp:TextBox>
                <asp:Label ID="Label1" class=" vStyle" runat="server" Text="תאריך סיום"></asp:Label>
             </div>
            
            <asp:GridView ID="GridView1" runat="server" CssClass="m" BackColor="#f0f0f0" BorderColor="White"   BorderWidth="3px" CellPadding="4" ForeColor=" Black" CellSpacing="2" Width="1200px" AutoGenerateColumns="False">
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
            <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1" Width="1200px" OnLoad="Chart1_Load"  BackColor="Menu" Height="700px">
                <Series>
                    <asp:Series Name="Series1" YValueMembers="donSum" Color="red"   XValueMember="donDate"  LegendText="ש&quot;ח" XValueType="Date"></asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                </ChartAreas>
            </asp:Chart>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" OnSelecting="SqlDataSource1_Selecting" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [donSum] ,[donDate] FROM [donors] ORDER BY [donDate] "></asp:SqlDataSource>
    </center>
    </td>

</asp:Content>
