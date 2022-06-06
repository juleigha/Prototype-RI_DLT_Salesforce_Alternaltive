using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace WFProto2
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["Prog_ID"] = GridView1.SelectedRow.Cells[3].Text;
            Response.Redirect("Program.aspx");
        }

        protected void btnNewProg_Click(object sender, EventArgs e)
        {
            Response.Redirect("NewProgram.aspx");
        }
    }
}