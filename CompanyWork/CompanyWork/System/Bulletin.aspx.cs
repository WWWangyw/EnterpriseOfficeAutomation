using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class System_Bulletin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DepartmentManager dm = new DepartmentManager();
        bool re = dm.AddBulletin(TextBox1.Text);

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
