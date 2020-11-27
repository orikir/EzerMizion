<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="donChart.aspx.cs" Inherits="EzerMizion.donChart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <td>
        <center>
    <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1" Width="800px" OnLoad="Chart1_Load" BackColor="MenuBar">
        <Series>
            <asp:Series Name="Series1" YValueMembers="sum" Color="#cccccc"    XValueMember="donDate" ChartType="Area" LegendText="ש&quot;ח" XValueType="Date"></asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
        </ChartAreas>
    </asp:Chart>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" OnSelecting="SqlDataSource1_Selecting" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [sum] ,[donDate] FROM [donors] ORDER BY [donDate] "></asp:SqlDataSource>
    </center>
    </td>
</asp:Content>
