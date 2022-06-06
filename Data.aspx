<%@ Page Title="ClosedPrograms" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Data.aspx.cs" Inherits="WFProto2.Data" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h4>&nbsp;</h4>
    <h4>Finalized Programs</h4>
    <asp:SqlDataSource ID="dsFinalizedProgs" runat="server" ConnectionString="Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\protoype.accdb" ProviderName="System.Data.OleDb" SelectCommand="SELECT Program.Prog_Name, Account.Account_Revenue FROM (Account INNER JOIN Program ON Account.Account_ID = Program.Account_ID) WHERE (Program.Prog_Status = 6)"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="dsFinalizedProgs" Height="231px" Width="809px">
        <Columns>
            <asp:BoundField DataField="Prog_Name" HeaderText="Program Name" SortExpression="Prog_Name" />
            <asp:BoundField DataField="Account_Revenue" DataFormatString="{0:C}" HeaderText="Revenue" SortExpression="Account_Revenue" />
        </Columns>
    </asp:GridView>
</asp:Content>
