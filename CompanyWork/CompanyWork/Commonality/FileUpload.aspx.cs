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

public partial class ShareArea_FileUpload : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String path = Server.MapPath("../FileData/");
        if (FileUpload1.HasFile)
        {
            if (FileUpload1.FileBytes.Length > 1024*1024)
            {
                Page.ClientScript.RegisterStartupScript(GetType(), "", "<script>alert('只支持大小 1024K 以内文件')</script>");
            }
            else
            {
                try
                {
                    FileUpload1.PostedFile.SaveAs(path + FileUpload1.FileName);
                    Page.ClientScript.RegisterStartupScript(GetType(), "", "<script>alert('执行成功')</script>");
                }
                catch (Exception ex)
                {
                    Page.ClientScript.RegisterStartupScript(GetType(), "", "<script>alert('执行失败')</script>");
                }
            }
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "", "<script>alert('请选择文件')</script>");
        }
    }
}
