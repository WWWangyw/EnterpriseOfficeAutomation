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

public partial class PeopleArea_Assess : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            AssessManager am = new AssessManager();
            am.AddAssess(tb_name1.Text, tb_data1.Text, Calendar1.SelectedDate);

            Page.ClientScript.RegisterStartupScript(GetType(), "", "<script>alert('执行成功')</script>");
        }
        catch (Exception ex)
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "", "<script>alert('执行失败')</script>");
           // throw;
        }

    }
}
