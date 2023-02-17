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

public partial class controls_MessageSend : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["employeename"] != null)
            this.tb_aim.Text = Request.QueryString["employeename"];
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string aimUserName = HttpContext.Current.User.Identity.Name.ToString();
        MessagerManager mm = new MessagerManager();
        bool re = mm.SendMessage(tb_aim.Text, aimUserName, tb_title.Text, tb_text.Text);
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
