<%@ Page Title="ProgramInfo" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Program.aspx.cs" Inherits="WFProto2.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
    <asp:Label ID="lblStatus" runat="server"></asp:Label>
    <asp:FormView ID="FormView1" runat="server" DataSourceID="progDetails" style="margin-top: 0px; margin-right: 233px;" Width="803px">
        <EditItemTemplate>
            Prog_ID:
            <asp:Label ID="Prog_IDLabel1" runat="server" Text='<%# Eval("Prog_ID") %>' />
            <br />
            Prog_Name:
            <asp:TextBox ID="Prog_NameTextBox" runat="server" Text='<%# Bind("Prog_Name") %>' />
            <br />
            Account_ID:
            <asp:TextBox ID="Account_IDTextBox" runat="server" Text='<%# Bind("Account_ID") %>' />
            <br />
            Prog_StartDate:
            <asp:TextBox ID="Prog_StartDateTextBox" runat="server" Text='<%# Bind("Prog_StartDate") %>' />
            <br />
            Prog_Status:
            <asp:TextBox ID="Prog_StatusTextBox" runat="server" Text='<%# Bind("Prog_Status") %>' />
            <br />
            Account_Revenue:
            <asp:TextBox ID="Account_RevenueTextBox" runat="server" Text='<%# Bind("Account_Revenue") %>' />
            <br />
            DirAssign_Start:
            <asp:TextBox ID="DirAssign_StartTextBox" runat="server" Text='<%# Bind("DirAssign_Start") %>' />
            <br />
            Dir_FirstName:
            <asp:TextBox ID="Dir_FirstNameTextBox" runat="server" Text='<%# Bind("Dir_FirstName") %>' />
            <br />
            Dir_LastName:
            <asp:TextBox ID="Dir_LastNameTextBox" runat="server" Text='<%# Bind("Dir_LastName") %>' />
            <br />
            Partner_FirstName:
            <asp:TextBox ID="Partner_FirstNameTextBox" runat="server" Text='<%# Bind("Partner_FirstName") %>' />
            <br />
            Parnter_LastName:
            <asp:TextBox ID="Parnter_LastNameTextBox" runat="server" Text='<%# Bind("Parnter_LastName") %>' />
            <br />
            Parnter_Email:
            <asp:TextBox ID="Parnter_EmailTextBox" runat="server" Text='<%# Bind("Parnter_Email") %>' />
            <br />
            Partner_Phone:
            <asp:TextBox ID="Partner_PhoneTextBox" runat="server" Text='<%# Bind("Partner_Phone") %>' />
            <br />
            Parnter_ComapanyName:
            <asp:TextBox ID="Parnter_ComapanyNameTextBox" runat="server" Text='<%# Bind("Parnter_ComapanyName") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            Prog_Name:
            <asp:TextBox ID="Prog_NameTextBox" runat="server" Text='<%# Bind("Prog_Name") %>' />
            <br />
            Account_ID:
            <asp:TextBox ID="Account_IDTextBox" runat="server" Text='<%# Bind("Account_ID") %>' />
            <br />
            Prog_StartDate:
            <asp:TextBox ID="Prog_StartDateTextBox" runat="server" Text='<%# Bind("Prog_StartDate") %>' />
            <br />
            Prog_Status:
            <asp:TextBox ID="Prog_StatusTextBox" runat="server" Text='<%# Bind("Prog_Status") %>' />
            <br />
            Account_Revenue:
            <asp:TextBox ID="Account_RevenueTextBox" runat="server" Text='<%# Bind("Account_Revenue") %>' />
            <br />
            DirAssign_Start:
            <asp:TextBox ID="DirAssign_StartTextBox" runat="server" Text='<%# Bind("DirAssign_Start") %>' />
            <br />
            Dir_FirstName:
            <asp:TextBox ID="Dir_FirstNameTextBox" runat="server" Text='<%# Bind("Dir_FirstName") %>' />
            <br />
            Dir_LastName:
            <asp:TextBox ID="Dir_LastNameTextBox" runat="server" Text='<%# Bind("Dir_LastName") %>' />
            <br />
            Partner_FirstName:
            <asp:TextBox ID="Partner_FirstNameTextBox" runat="server" Text='<%# Bind("Partner_FirstName") %>' />
            <br />
            Parnter_LastName:
            <asp:TextBox ID="Parnter_LastNameTextBox" runat="server" Text='<%# Bind("Parnter_LastName") %>' />
            <br />
            Parnter_Email:
            <asp:TextBox ID="Parnter_EmailTextBox" runat="server" Text='<%# Bind("Parnter_Email") %>' />
            <br />
            Partner_Phone:
            <asp:TextBox ID="Partner_PhoneTextBox" runat="server" Text='<%# Bind("Partner_Phone") %>' />
            <br />
            Parnter_ComapanyName:
            <asp:TextBox ID="Parnter_ComapanyNameTextBox" runat="server" Text='<%# Bind("Parnter_ComapanyName") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            <table class="nav-justified">
                <tr>
                    <td style="width: 118px">Program Name:</td>
                    <td class="modal-sm">
                        <asp:Label ID="Prog_NameLabel" runat="server" Text='<%# Bind("Prog_Name") %>' />
                    </td>
                    <td>&nbsp;</td>
                    <td>Company name:</td>
                    <td>
                        <asp:Label ID="Parnter_ComapanyNameLabel" runat="server" Text='<%# Bind("Parnter_ComapanyName") %>' />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 118px">Creation Date:</td>
                    <td class="modal-sm">
                        <asp:Label ID="Prog_StartDateLabel" runat="server" Text='<%# Bind("Prog_StartDate") %>' />
                    </td>
                    <td>&nbsp;</td>
                    <td>Industry Parnter:</td>
                    <td>
                        <asp:Label ID="Parnter_LastNameLabel" runat="server" Text='<%# Bind("Parnter_LastName") %>' />
                        <asp:Label ID="Partner_FirstNameLabel" runat="server" Text='<%# Bind("Partner_FirstName") %>' />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 118px; height: 8px;">Program Status:</td>
                    <td class="modal-sm" style="height: 8px">
                        <asp:Label ID="Prog_StatusLabel" runat="server" Text='<%# Bind("Prog_Status") %>' />
                    </td>
                    <td style="height: 8px"></td>
                    <td style="height: 8px">Email:</td>
                    <td style="height: 8px">
                        <asp:Label ID="Parnter_EmailLabel" runat="server" Text='<%# Bind("Parnter_Email") %>' />
                    </td>
                    <td style="height: 8px"></td>
                </tr>
                <tr>
                    <td style="width: 118px; height: 21px;">Revenue:</td>
                    <td class="modal-sm" style="height: 21px">
                        <asp:Label ID="Account_RevenueLabel" runat="server" Text='<%# Bind("Account_Revenue") %>' />
                    </td>
                    <td style="height: 21px"></td>
                    <td style="height: 21px">Phone:</td>
                    <td style="height: 21px">
                        <asp:Label ID="Partner_PhoneLabel" runat="server" Text='<%# Bind("Partner_Phone") %>' />
                    </td>
                    <td style="height: 21px"></td>
                </tr>
                <tr>
                    <td style="width: 118px">Program DIrector:</td>
                    <td class="modal-sm">
                        <asp:Label ID="Dir_FirstNameLabel" runat="server" Text='<%# Bind("Dir_FirstName") %>' />
                        <asp:Label ID="Dir_LastNameLabel" runat="server" Text='<%# Bind("Dir_LastName") %>' />
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:FormView>
    <table class="nav-justified">
        <tr>
            <td style="width: 447px">

                    &nbsp;</td>
            <td>
                    Files:</td>
        </tr>
        <tr>
            <td style="width: 447px">

                    <asp:Label ID="lblReminder" runat="server" Text="Label" BackColor="#FFFF66" Font-Bold="True"></asp:Label>

                    <asp:FileUpload id="FileUploadControl" runat="server" />
                    <asp:Button runat="server" id="UploadButton" text="Upload" onclick="UploadButton_Click" />
                    <br />
                    <asp:Label runat="server" id="StatusLabel" text="Upload status: " />
            </td>
            <td>
                    <asp:GridView ID="GridView1" runat="server" DataSourceID="dsProgFiles" Width="365px" style="margin-top: 0px" AutoGenerateColumns="False">
                        <Columns>
                            <asp:BoundField DataField="File_DisplayName" HeaderText="File_DisplayName" SortExpression="File_DisplayName" />
                            <asp:BoundField DataField="File_Date" HeaderText="File_Date" SortExpression="File_Date" />
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# HttpContext.Current.Server.HtmlDecode((string)Eval("File_View")) %>' />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# HttpContext.Current.Server.HtmlDecode((string)Eval("File_Download")) %>' />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<a href="mailto:someone@example.com">Email</a>' />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                    </td>
        </tr>
    </table>
    <table class="nav-justified">
        <tr>
            <td class="modal-sm" style="width: 449px">&nbsp;</td>
            <td>Instructors:</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 449px">
    <asp:FormView ID="FormView2" runat="server" DataSourceID="dsEmplyPrior" Height="20px" Width="246px">
        <EditItemTemplate>
            Expr1:
            <asp:TextBox ID="Expr1TextBox" runat="server" Text='<%# Bind("Expr1") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            Expr1:
            <asp:TextBox ID="Expr1TextBox" runat="server" Text='<%# Bind("Expr1") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            Students Employed:
            <asp:Label ID="Expr1Label" runat="server" Text='<%# Bind("Expr1") %>' />
            <br />
        </ItemTemplate>
    </asp:FormView>
    <asp:FormView ID="FormView3" runat="server" DataSourceID="dsEmplyPost" Width="214px">
        <EditItemTemplate>
            Expr1:
            <asp:TextBox ID="Expr1TextBox" runat="server" Text='<%# Bind("Expr1") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            Expr1:
            <asp:TextBox ID="Expr1TextBox" runat="server" Text='<%# Bind("Expr1") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            Students Hired:
            <asp:Label ID="Expr1Label" runat="server" Text='<%# Bind("Expr1") %>' />
            <br />

        </ItemTemplate>
    </asp:FormView>
    <asp:FormView ID="FormView4" runat="server" DataSourceID="dsStudentsPromoted" Height="16px" style="margin-left: 0px" Width="235px">
        <EditItemTemplate>
            Expr1:
            <asp:TextBox ID="Expr1TextBox" runat="server" Text='<%# Bind("Expr1") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            Expr1:
            <asp:TextBox ID="Expr1TextBox" runat="server" Text='<%# Bind("Expr1") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            Students Promoted:
            <asp:Label ID="Expr1Label" runat="server" Text='<%# Bind("Expr1") %>' />
            <br />

        </ItemTemplate>
    </asp:FormView>
                    </td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Assign Prof. Example" Width="156px" />
                <asp:GridView ID="gvInstructors" runat="server" AutoGenerateColumns="False" DataSourceID="dsInstructs">
                    <AlternatingRowStyle BackColor="#FFFFCC" />
                    <Columns>
                        <asp:BoundField DataField="Inst_FirstName" HeaderText="First Name" SortExpression="Inst_FirstName" />
                        <asp:BoundField DataField="Inst_LastName" HeaderText="Last Name" SortExpression="Inst_LastName" />
                        <asp:BoundField DataField="Inst_Email" HeaderText="Email" SortExpression="Inst_Email" />
                        <asp:BoundField DataField="Inst_Phone" HeaderText="Phone" SortExpression="Inst_Phone" />
                        <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<a href="mailto:someone@example.com">Email</a>' />
                                </ItemTemplate>
                            </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="dsInstructs" runat="server" ConnectionString="Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\protoype.accdb" ProviderName="System.Data.OleDb" SelectCommand="SELECT DISTINCT Instructor.Inst_FirstName, Instructor.Inst_LastName, Instructor.Inst_Email, Instructor.Inst_Phone FROM (Instructor INNER JOIN InstructorAssignment ON Instructor.Inst_ID = InstructorAssignment.Inst_ID) WHERE (InstructorAssignment.Prog_ID = ?)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="Label1" Name="?" PropertyName="Text" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
    Sudents:<br />
    <asp:Button ID="btnAddStndt" runat="server" OnClick="btnAddStndt_Click" Text="Add Example Student" />
                    <asp:GridView ID="GridView2" runat="server" DataSourceID="dsStudents" style="margin-top: 0px" OnRowCommand="GridView2_RowCommand">
                        <AlternatingRowStyle BackColor="#FFFFCC" />
                        <Columns>
                            <asp:CommandField DeleteText="Remove" ShowEditButton="True" />
                            <asp:ButtonField CausesValidation="True" CommandName="remove" Text="Remove" />
                        </Columns>
    </asp:GridView>
                <asp:SqlDataSource ID="dsEmplyPrior" runat="server" ConnectionString="Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\protoype.accdb" ProviderName="System.Data.OleDb" SelectCommand="SELECT COUNT(Student.Stud_ID) AS Expr1 FROM (Student INNER JOIN ProgramAttendance ON Student.Stud_ID = ProgramAttendance.Stud_ID) WHERE (ProgramAttendance.Prog_ID = ?) AND (ProgramAttendance.Attendance_Date = '0') AND (Student.Stud_EmployPrior = true)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="Label1" Name="?" PropertyName="Text" />
                    </SelectParameters>
    </asp:SqlDataSource>
                    <asp:SqlDataSource ID="dsProgFiles" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString7 %>" ProviderName="<%$ ConnectionStrings:ConnectionString7.ProviderName %>" SelectCommand="SELECT File_DisplayName, File_Date, File_Download, File_View FROM File WHERE (Prog_ID = ?)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="Label1" Name="Prog_ID" PropertyName="Text" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
    <asp:SqlDataSource ID="dsEmplyPost" runat="server" ConnectionString="Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\protoype.accdb" ProviderName="System.Data.OleDb" SelectCommand="SELECT COUNT(Student.Stud_ID) AS Expr1 FROM (Student INNER JOIN ProgramAttendance ON Student.Stud_ID = ProgramAttendance.Stud_ID) WHERE (ProgramAttendance.Prog_ID = ?) AND (ProgramAttendance.Attendance_Date = '0') AND (Student.Stud_EmployPost = true)">
        <SelectParameters>
            <asp:ControlParameter ControlID="Label1" Name="?" PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="dsStudentsPromoted" runat="server" ConnectionString="Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\protoype.accdb" ProviderName="System.Data.OleDb" SelectCommand="SELECT COUNT(Student.Stud_ID) AS Expr1 FROM (Student INNER JOIN ProgramAttendance ON Student.Stud_ID = ProgramAttendance.Stud_ID) WHERE (ProgramAttendance.Prog_ID = ?) AND (ProgramAttendance.Attendance_Date = '0') AND (Student.Stud_Promoted = true)">
        <SelectParameters>
            <asp:ControlParameter ControlID="Label1" Name="?" PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="dsStudents" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString8 %>" ProviderName="<%$ ConnectionStrings:ConnectionString8.ProviderName %>" SelectCommand="SELECT DISTINCT Student.Stud_ID, Student.Stud_FirstName, Student.Stud_LastName, Student.Stud_EmployPrior, Student.Stud_EmployPost, Student.Stud_Promoted FROM (ProgramAttendance INNER JOIN Student ON ProgramAttendance.Stud_ID = Student.Stud_ID) WHERE (ProgramAttendance.Prog_ID = ?) AND (ProgramAttendance.Attendance_Date = '0')" UpdateCommand="UPDATE Student SET Stud_EmployPrior =@Stud_EmployPrior, Stud_EmployPost =@Stud_EmployPost, Stud_Promoted = @Stud_Promoted WHERE Stud_ID = @Stud_ID" InsertCommand="INSERT INTO ProgramAttendance(Stud_ID, Prog_ID, Attendance_Date) VALUES (?, ?, '0')">
        <InsertParameters>
            <asp:ControlParameter ControlID="lblNumStdnts" Name="Stud_ID" PropertyName="Text" />
            <asp:ControlParameter ControlID="Label1" Name="progID" PropertyName="Text" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="Label1" Name="?" PropertyName="Text" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Stud_EmployPrior" Type="boolean" />
            <asp:Parameter Name="Stud_EmployPost" Type="boolean" />
            <asp:Parameter Name="Stud_Promoted" Type="boolean" />
            <asp:Parameter Name="Stud_ID" Type="int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="progDetails" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString5 %>" ProviderName="<%$ ConnectionStrings:ConnectionString5.ProviderName %>" SelectCommand="SELECT Program.Prog_ID, Program.Prog_Name, Program.Account_ID, Program.Prog_StartDate, Program.Prog_Status, Account.Account_Revenue, DirectorAssignment.DirAssign_Start, ProgramDirector.Dir_FirstName, ProgramDirector.Dir_LastName, IndustryPartner.Partner_FirstName, IndustryPartner.Parnter_LastName, IndustryPartner.Parnter_Email, IndustryPartner.Partner_Phone, IndustryPartner.Parnter_ComapanyName FROM ((((Account INNER JOIN Program ON Account.Account_ID = Program.Account_ID) INNER JOIN DirectorAssignment ON Program.Prog_ID = DirectorAssignment.Prog_ID) INNER JOIN ProgramDirector ON DirectorAssignment.Dir_ID = ProgramDirector.Dir_ID) INNER JOIN IndustryPartner ON Program.Partner_ID = IndustryPartner.Partner_ID) WHERE ([Program.Prog_ID] = ?)" UpdateCommand="UPDATE Program SET Prog_Status = ? WHERE (Prog_ID = ?)">
        <SelectParameters>
            <asp:ControlParameter ControlID="Label1" Name="newparameter" PropertyName="Text" />
        </SelectParameters>
        <UpdateParameters>
            <asp:SessionParameter Name="status" SessionField="P_Status" />
            <asp:SessionParameter Name="id" SessionField="Prog_ID" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="dsAddStndt" runat="server" ConnectionString="Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\protoype.accdb" InsertCommand="INSERT INTO [Student] ([Stud_FirstName], [Stud_LastName], [Stud_EmployPrior], [Stud_EmployPost], [Stud_Promoted]) VALUES ('Example', 'Student', false, false, false)" ProviderName="System.Data.OleDb" SelectCommand="Select COunt(Stud_ID) from Student"></asp:SqlDataSource>
    <br />
    <asp:Button ID="btnNextStatus" runat="server" OnClick="btnNextStatus_Click" Width="315px" />
    <asp:Button ID="btnStartProgramOver" runat="server" Visible="False" Width="292px" OnClick="btnStartProgramOver_Click" />
    <asp:Label ID="lblNumStdnts" runat="server" Text="Label" Visible="False"></asp:Label>
    <asp:Label ID="lblStdID" runat="server" Text="Label" Visible="False"></asp:Label>
</asp:Content>
