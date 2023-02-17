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

public partial class controls_Department : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DepartmentManager dm = new DepartmentManager();
        bool re = dm.AddDepartment(tb_department7.Text);
        if (re)
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "", "<script>alert('执行成功')</script>");
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "", "<script>alert('执行失败')</script>");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        DepartmentManager dm = new DepartmentManager();
        bool re=dm.DeleteDepartment(DepartmentList1.SelectValue);

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
