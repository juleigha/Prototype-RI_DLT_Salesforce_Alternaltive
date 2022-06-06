using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;
using System.Collections;
using System.Web.Security;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.Odbc;


namespace WFProto2
{
    public partial class About : Page
    {
        private int status;
        private int progID;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (String.IsNullOrEmpty($"{Session["programID"]}")) ;
            {
                Response.Redirect("Default.aspx");
            }
            DataView dvProgDetails = (DataView)progDetails.Select(DataSourceSelectArguments.Empty);
            progID = (int)dvProgDetails.Table.Rows[0][0];
            status = (int)dvProgDetails.Table.Rows[0][4];
            switch (status)
            {
                case 0:
                    lblStatus.Text = "New Program";
                    lblReminder.Text = "Upload Program Requirements file";
                    btnNextStatus.Text = "Ready to create budget";
                    break;
                case 1:
                    lblStatus.Text = "Budgeting";
                    lblReminder.Text = "Upload Budget file";
                    btnNextStatus.Text = "Submit budget";
                    break;
                case 2:
                    lblStatus.Text = "Pending Budget Approval";
                    lblReminder.Text = "'Print For DLT' will appear during this status";
                    btnNextStatus.Text = "Budget Approved";
                    btnStartProgramOver.Text = "Budget Disapproved";
                    btnStartProgramOver.Visible = true;
                    break;
                case 3:
                    lblStatus.Text = "Pending Funding";
                    lblReminder.Text = "Upload Invoice";
                    btnNextStatus.Text = "Funding Aquired";
                    break;
                case 4:
                    lblStatus.Text = "Coordinating";
                    lblReminder.Text = "Upload Program Scheduling and Curriculum files";
                    btnNextStatus.Text = "Establish Program Details";
                    break;
                case 5:
                    lblStatus.Text = "Active";
                    lblReminder.Text = "Update Student Employment status";
                    btnNextStatus.Text = "Complete and Archive Program";
                    break;
                case 6:
                    lblStatus.Text = "Complete";
                    lblReminder.Visible = false;
                    btnNextStatus.Visible = false;
                    break;
            }
        }
        protected void UploadButton_Click(object sender, EventArgs e)
        {
            if (FileUploadControl.HasFile)
            {
                
                try
                {
                    string filename = Path.GetFileName(FileUploadControl.FileName);
                    string location = $"{Server.MapPath("~/ProgramFiles/")}{progID}{filename}";
                    string aTag = HttpUtility.HtmlEncode($"<a href = '/ProgramFiles/{progID}{filename}' download>Download</a>");
                    string viewFile = HttpUtility.HtmlEncode($"<a href = '/ProgramFiles/{progID}{filename}'>View</a>");
                    FileUploadControl.SaveAs(location);
                    StatusLabel.Text = "File uploaded";
                    dsProgFiles.InsertCommand = $"INSERT INTO File(Prog_ID, File_DisplayName, File_Download, File_View, File_Date) VALUES ( {progID},'{FileUploadControl.FileName}','{aTag}','{viewFile}','{DateTime.Today.ToShortDateString()}')";
                    dsProgFiles.Insert();
                }
                catch (Exception ex)
                {
                    StatusLabel.Text = "File not uploaded. error: " + ex.Message;
                }
            }
        }

        protected void btnNextStatus_Click(object sender, EventArgs e)
        {
            Session["P_Status"] = status + 1;
            progDetails.Update();
            Response.Redirect("Default.aspx");
        }

        protected void btnAddStndt_Click(object sender, EventArgs e)
        {
            dsAddStndt.Insert();
            DataView dvAddStdnts = (DataView)dsAddStndt.Select(DataSourceSelectArguments.Empty);
            lblNumStdnts.Text = dvAddStdnts.Table.Rows[0][0].ToString();
            dsStudents.Insert();
        }

        protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName.Equals("remove"))
            {
                int rowIndex = Convert.ToInt32(e.CommandArgument);
                DataView dvStdnt = (DataView)dsStudents.Select(DataSourceSelectArguments.Empty);
                int id = (int)dvStdnt.Table.Rows[rowIndex][0];
                dsStudents.DeleteCommand = $"DELETE FROM ProgramAttendance WHERE (Stud_ID = {id}) AND (Attendance_Date = '0') AND (Prog_ID = {int.Parse(Label1.Text)})";
                dsStudents.Delete();
            }
        }

        protected void btnStartProgramOver_Click(object sender, EventArgs e)
        {
            progDetails.UpdateCommand = $"Update Program set Prog_Status = 0 where Prog_ID = {progID}";
            progDetails.Update();
            Response.Redirect("Default.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            dsInstructs.InsertCommand = $"insert into InstructorAssignment(Inst_Id, Prog_ID, InstAssign_Start) values(1,{progID},{DateTime.Today.ToShortDateString()})";
            dsInstructs.Insert();
        }

    }
}