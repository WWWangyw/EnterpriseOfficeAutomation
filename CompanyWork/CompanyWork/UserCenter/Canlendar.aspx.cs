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

public partial class UserCenter_Canlendar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            CalendarManager cm = new CalendarManager();
            string employeename = HttpContext.Current.User.Identity.Name;
            cm.AddCalendar(employeename, tb_title5.Text, tb_text6.Text, Calendar1.SelectedDate);

            Page.ClientScript.RegisterStartupScript(GetType(), "", "<script>alert('日程安排成功')</script>");
        }
        catch (Exception ex)
        {

            Page.ClientScript.RegisterStartupScript(GetType(), "", "<script>alert('执行失败')</script>");
           // throw;
        }
    }
}
