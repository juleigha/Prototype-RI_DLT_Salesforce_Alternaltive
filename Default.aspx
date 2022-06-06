<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WFProto2._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h2>
            <table class="nav-justified">
                <tr>
                    <td style="width: 371px">All Programs</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </h2>
        <p>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="qryNameRev" Height="261px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="774px">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" SelectText="View" />
                    <asp:BoundField DataField="Prog_Name" HeaderText="Program Name" SortExpression="Prog_Name" />
                    <asp:BoundField DataField="Account_Revenue" HeaderText="Revenue" SortExpression="Account_Revenue" DataFormatString="{0:C}" />
                    <asp:BoundField DataField="Prog_ID" HeaderText="ID" SortExpression="Prog_ID" InsertVisible="False" />
                    <asp:BoundField DataField="Prog_Status" HeaderText="Status" SortExpression="Prog_Status" />
                    <asp:BoundField DataField="Prog_StartDate" HeaderText="Date Created" SortExpression="Prog_StartDate" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="qryNameRev" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT Account.Account_Revenue, Program.Prog_ID, Program.Prog_Name, Program.Prog_Status, Program.Prog_StartDate FROM (Account INNER JOIN Program ON Account.Account_ID = Program.Account_ID) "></asp:SqlDataSource>
        </p>
    </div>

    
</asp:Content>
