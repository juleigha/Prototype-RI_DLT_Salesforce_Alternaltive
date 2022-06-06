<%@ Page Title="Start New Program" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="NewProgram.aspx.cs" Inherits="WFProto2.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        &nbsp;</p>
    <p>
        Create New Program</p>
    <p>
        *Creating Program as Example Director</p>
    <table class="nav-justified">
        <tr>
            <td style="width: 172px">Company Name:</td>
            <td class="modal-sm" style="width: 319px">
                <asp:TextBox ID="txtInCompany" runat="server" Width="229px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 172px">Contact First Name:</td>
            <td class="modal-sm" style="width: 319px">
                <asp:TextBox ID="txtInFName" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 172px; height: 20px">Contact Last Name:</td>
            <td class="modal-sm" style="width: 319px; height: 20px">
                <asp:TextBox ID="txtInLName" runat="server"></asp:TextBox>
            </td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td style="width: 172px">Contact Phone:</td>
            <td class="modal-sm" style="width: 319px">
                <asp:TextBox ID="txtInPhone" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 172px">Conact Email:</td>
            <td class="modal-sm" style="width: 319px">
                <asp:TextBox ID="txtInEmail" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 172px">&nbsp;</td>
            <td class="modal-sm" style="width: 319px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 172px">Program Name:</td>
            <td class="modal-sm" style="width: 319px">
                <asp:TextBox ID="txtInProgName" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 172px">&nbsp;</td>
            <td class="modal-sm" style="width: 319px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 172px; height: 21px"></td>
            <td class="modal-sm" style="width: 319px; height: 21px">
                <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Create Program" Width="148px" />
            </td>
            <td style="height: 21px"></td>
        </tr>
        <tr>
            <td style="width: 172px">&nbsp;</td>
            <td class="modal-sm" style="width: 319px">
                <asp:SqlDataSource ID="dsPartner" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString9 %>" DeleteCommand="DELETE FROM [IndustryPartner] WHERE [Partner_ID] = ?" InsertCommand="INSERT INTO IndustryPartner(Partner_FirstName, Parnter_LastName, Parnter_Email, Partner_Phone, Parnter_ComapanyName) VALUES (?, ?, ?, ?, ?) " ProviderName="<%$ ConnectionStrings:ConnectionString9.ProviderName %>" SelectCommand="SELECT * FROM [IndustryPartner]" UpdateCommand="UPDATE [IndustryPartner] SET [Partner_FirstName] = ?, [Parnter_LastName] = ?, [Parnter_Email] = ?, [Partner_Phone] = ?, [Parnter_ComapanyName] = ? WHERE [Partner_ID] = ?">
                    <DeleteParameters>
                        <asp:Parameter Name="Partner_ID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:ControlParameter ControlID="txtInFName" Name="Partner_FirstName" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="txtInLName" Name="Parnter_LastName" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="txtInEmail" Name="Parnter_Email" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="txtInPhone" DefaultValue="" Name="Partner_Phone" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="txtInCompany" DefaultValue="" Name="Parnter_ComapanyName" PropertyName="Text" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Partner_FirstName" Type="String" />
                        <asp:Parameter Name="Parnter_LastName" Type="String" />
                        <asp:Parameter Name="Parnter_Email" Type="String" />
                        <asp:Parameter Name="Partner_Phone" Type="String" />
                        <asp:Parameter Name="Parnter_ComapanyName" Type="String" />
                        <asp:Parameter Name="Partner_ID" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="dsAccount" runat="server" ConnectionString="Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\protoype.accdb" DeleteCommand="DELETE FROM [Account] WHERE [Account_ID] = ?" InsertCommand="INSERT INTO [Account] ( [Account_Revenue]) VALUES ( ?)" ProviderName="System.Data.OleDb" SelectCommand="SELECT * FROM [Account]" UpdateCommand="UPDATE [Account] SET [Account_Revenue] = ? WHERE [Account_ID] = ?">
                    <DeleteParameters>
                        <asp:Parameter Name="Account_ID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter DefaultValue="0" Name="Account_Revenue" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Account_Revenue" Type="Int32" />
                        <asp:Parameter Name="Account_ID" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="dsProg" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString10 %>" DeleteCommand="DELETE FROM [Program] WHERE [Prog_ID] = ?" InsertCommand="INSERT INTO [Program] ( [Prog_Name], [Account_ID], [Prog_StartDate], [Prog_Status], [Partner_ID]) VALUES (?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:ConnectionString10.ProviderName %>" SelectCommand="SELECT * FROM [Program]" UpdateCommand="UPDATE [Program] SET [Prog_Name] = ?, [Prog_Account] = ?, [Prog_StartDate] = ?, [Prog_EndDate] = ?, [Prog_Status] = ?, [Partner_ID] = ? WHERE [Prog_ID] = ?">
                    <DeleteParameters>
                        <asp:Parameter Name="Prog_ID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:ControlParameter ControlID="txtInProgName" Name="Prog_Name" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="lblAccntID" Name="Prog_Account" PropertyName="Text" Type="Int32" />
                        <asp:ControlParameter ControlID="lblTodayDate" DefaultValue="" Name="Prog_StartDate" PropertyName="Text" Type="String" />
                        <asp:Parameter DefaultValue="0" Name="Prog_Status" Type="Int32" />
                        <asp:ControlParameter ControlID="lblPartnerID" DefaultValue="" Name="Partner_ID" PropertyName="Text" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Prog_Name" Type="String" />
                        <asp:Parameter Name="Prog_Account" Type="Int32" />
                        <asp:Parameter Name="Prog_StartDate" Type="String" />
                        <asp:Parameter Name="Prog_EndDate" Type="String" />
                        <asp:Parameter Name="Prog_Status" Type="Int32" />
                        <asp:Parameter Name="Partner_ID" Type="Int32" />
                        <asp:Parameter Name="Prog_ID" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="dsDirAssign" runat="server" ConnectionString="Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\protoype.accdb" InsertCommand="insert into DirectorAssignment(Dir_ID,Prog_ID,DirAssign_Start) values(?,?,?);" ProviderName="System.Data.OleDb" SelectCommand="select * from DirectorAssignment where Dir_ID = null;">
                    <InsertParameters>
                        <asp:Parameter DefaultValue="1" Name="dirId" />
                        <asp:ControlParameter ControlID="lblProgID" DefaultValue="" Name="progID" PropertyName="Text" />
                        <asp:ControlParameter ControlID="lblTodayDate" DefaultValue="" Name="date" PropertyName="Text" />
                    </InsertParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="dsPartnerID" runat="server" ConnectionString="Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\protoype.accdb" ProviderName="System.Data.OleDb" SelectCommand="Select COUNT(Partner_ID) as num from IndustryPartner"></asp:SqlDataSource>
                <asp:SqlDataSource ID="dsAccountID" runat="server" ConnectionString="Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\protoype.accdb" ProviderName="System.Data.OleDb" SelectCommand="select count(Account_ID) as num from Account"></asp:SqlDataSource>
                <asp:SqlDataSource ID="dsProgID" runat="server" ConnectionString="Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\protoype.accdb" ProviderName="System.Data.OleDb" SelectCommand="select count(Prog_ID) as num from Program"></asp:SqlDataSource>
            </td>
            <td>
                <asp:Label ID="lblPartnerID" runat="server" Text="Label" Visible="False"></asp:Label>
                <asp:Label ID="lblAccntID" runat="server" Text="Label" Visible="False"></asp:Label>
                <asp:Label ID="lblProgID" runat="server" Text="Label" Visible="False"></asp:Label>
                <asp:Label ID="lblTodayDate" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
