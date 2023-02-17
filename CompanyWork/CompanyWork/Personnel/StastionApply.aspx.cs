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

public partial class Personnel_StastionApply : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            StationManager sm = new StationManager();
            sm.AddApply(int.Parse(DropDownList1.SelectedValue), tb_station1.Text, int.Parse(tb_count.Text), tb_qualification1.Text, tb_note2.Text);

            Page.ClientScript.RegisterStartupScript(GetType(), "", "<script>alert('执行成功')</script>");
        }
        catch (Exception ex)
        {

            Page.ClientScript.RegisterStartupScript(GetType(), "", "<script>alert('执行失败')</script>");
            // throw;
        }
    }
}
