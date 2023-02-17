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

public partial class controls_WorkTime : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            WorkingHoursManager whm = new WorkingHoursManager();
            TextBox1.Text = whm.GetStartWorkTime();
            TextBox2.Text = whm.GetEndWorkTime();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        WorkingHoursManager whm = new WorkingHoursManager();
        bool re = whm.SetWorkingHours(TextBox1.Text, TextBox2.Text);
        if (re)
        {

            Page.ClientScript.RegisterStartupScript(GetType(), "", "<script>alert('执行成功')</script>");
        }
        else
        {

            Page.ClientScript.RegisterStartupScript(GetType(), "", "<script>alert('执行失败')</script>");
        }
    }
}
