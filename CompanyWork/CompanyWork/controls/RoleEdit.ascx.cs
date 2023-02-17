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

public partial class controls_RoleEdit : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {


            MultiView1.ActiveViewIndex = int.Parse(Request.QueryString["mode"].ToString());

            string[] roleArray = Roles.GetAllRoles();
            ddl_role.DataSource = roleArray;
            ddl_role.DataBind();

            ddl_role2.DataSource = roleArray;
            ddl_role2.DataBind();
            ListBox1.DataSource = roleArray;
            ListBox1.DataBind();


        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Roles.CreateRole(tb_roleName.Text);
        DataBind2();

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        bool re = false;
        try
        {
            re = Roles.DeleteRole(ddl_role.SelectedValue);
        }
        catch (Exception ex)
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "", "<script>alert('"+ex.Message+"')</script>");
           //throw ex;
        }
        if (re)
        {
            DataBind2();
        }
        else
        {

            Page.ClientScript.RegisterStartupScript(GetType(), "", "<script>alert('执行失败')</script>");
        }
    }
    private void DataBind2()
    {
        ddl_role.DataSource = Roles.GetAllRoles();
        ddl_role.DataBind();
    }
    protected void CreateUserWizard1_ContinueButtonClick(object sender, EventArgs e)
    {
        GridView1.DataBind();
        CreateUserWizard1.ActiveStepIndex = 0;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        if (Roles.IsUserInRole(tb_username.Text, ddl_role2.SelectedValue))
        {

            Page.ClientScript.RegisterStartupScript(GetType(), "", "<script>alert('执行失败，不能赋予用户重复的角色')</script>");
        }
        else 
        {
            Roles.AddUserToRole(tb_username.Text, ddl_role2.SelectedValue);
        }
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        if (tb_username.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "", "<script>alert('请输入用户名')</script>");
            return;
        }
        if (!Roles.IsUserInRole(tb_username.Text, ddl_role2.SelectedValue))
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "", "<script>alert('执行失败')</script>");
        }
        else
        {
            Roles.RemoveUserFromRole(tb_username.Text, ddl_role2.SelectedValue);
        }
    }
    protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
    {
        ListBox2.DataSource = Roles.GetUsersInRole(ListBox1.SelectedItem.Value);
        ListBox2.DataBind();
    }
}
