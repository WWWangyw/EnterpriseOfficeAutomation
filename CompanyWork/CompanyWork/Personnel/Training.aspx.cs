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

public partial class Personnel_Training : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            TrainingManager tm = new TrainingManager();
            tm.AddTraining(tb_title3.Text, tb_text4.Text, Calendar1.SelectedDate, tb_personnel5.Text);

            Page.ClientScript.RegisterStartupScript(GetType(), "", "<script>alert('添加成功')</script>");
        }
        catch (Exception ex)
        {

            Page.ClientScript.RegisterStartupScript(GetType(), "", "<script>alert('执行失败')</script>");
           // throw;
        }
    }
}
