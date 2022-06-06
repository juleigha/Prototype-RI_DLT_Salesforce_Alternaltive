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

namespace WFProto2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            lblTodayDate.Text = DateTime.Now.ToShortDateString();
            dsPartner.Insert();
            DataView dvParnterId = (DataView)dsPartnerID.Select(DataSourceSelectArguments.Empty);
            lblPartnerID.Text = ((int)dvParnterId.Table.Rows[0][0]).ToString();
            dsAccount.Insert();
            DataView dvAccountID = (DataView)dsAccountID.Select(DataSourceSelectArguments.Empty);
            lblAccntID.Text = ((int)dvAccountID.Table.Rows[0][0]).ToString();
            dsProg.Insert();
            DataView dvProgID = (DataView)dsProgID.Select(DataSourceSelectArguments.Empty);
            lblProgID.Text = ((int)dvProgID.Table.Rows[0][0]).ToString();
            dsDirAssign.Insert();
            Response.Redirect("Default.aspx");
        }
    }
}