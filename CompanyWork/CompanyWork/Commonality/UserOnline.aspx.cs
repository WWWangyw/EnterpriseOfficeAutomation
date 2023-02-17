using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class Commonality_UserOnline : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "在线" + Membership.GetNumberOfUsersOnline().ToString() + "人";
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        GridViewRow row = GridView1.SelectedRow;
        Response.Redirect("~/UserCenter/MessageSend.aspx?employeename=" + row.Cells[1].Text);
    }
}
