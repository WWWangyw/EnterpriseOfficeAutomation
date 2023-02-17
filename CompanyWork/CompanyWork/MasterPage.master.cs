using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {

            if (MessagerManager.GetMessage(HttpContext.Current.User.Identity.Name))
            {
                HyperLink1.Text = "有新消息";

                HyperLink1.NavigateUrl = "UserCenter/MessageList.aspx";
            }
        }

    }
    protected void LoginStatus1_LoggingOut(object sender, LoginCancelEventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
}
