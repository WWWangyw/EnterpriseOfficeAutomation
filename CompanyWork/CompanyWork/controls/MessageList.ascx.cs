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

public partial class controls_MessageList : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HiddenField1.Value = HttpContext.Current.User.Identity.Name;
    }
    protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        GridViewRow gvr = GridView1.Rows[e.NewSelectedIndex];

        int mid = int.Parse(GridView1.DataKeys[e.NewSelectedIndex].Value.ToString());
        MessagerManager mm = new MessagerManager();
        mm.UpdateSign(mid);
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
    }
}
