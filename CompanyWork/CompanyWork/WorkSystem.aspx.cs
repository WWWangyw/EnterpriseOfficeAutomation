using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class _WorkSystem : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            lb_date.Text = DateTime.Now.Date.ToShortDateString();

            lb_workTime.Text = DateTime.Now.TimeOfDay.ToString();

        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
}
