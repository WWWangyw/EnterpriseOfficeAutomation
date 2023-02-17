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
using System.IO;

public partial class Commonality_FileList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HiddenField1.Value = Server.MapPath("../FileData/");
    }
    protected void GridView1_RowCreated(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            LinkButton btn = (LinkButton)e.Row.Cells[2].Controls[0];
            btn.CommandArgument = e.Row.RowIndex.ToString();
        }
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "download")
        {
            int index = Convert.ToInt32(e.CommandArgument);
            GridViewRow gvr = GridView1.Rows[index];
            string SelectName = Server.MapPath("../FileData/") + gvr.Cells[0].Text;
            string saveFileName = gvr.Cells[0].Text;
            FileInfo fi = new FileInfo(SelectName);
            Response.Clear();
            Response.Charset = "utf-8";
            Response.Buffer = true;
            this.EnableViewState = false;
            Response.ContentEncoding = System.Text.Encoding.UTF8;
            Response.AppendHeader("Content-Disposition", "attachment;filename=" + saveFileName);
            Response.ContentType = "application/unknown"; ;
            Response.WriteFile(SelectName);
            Response.Flush();
            Response.Close();
            Response.End();
        }
    }
}
