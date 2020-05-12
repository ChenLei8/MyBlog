using Microsoft.AspNet.Identity;
using Microsoft.Owin.Security;
using System;
using System.Web;
using System.Web.UI;
using MyBlog1;
using System.Data;
using System.Data.SqlClient;

public partial class Login : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string connStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True";
        SqlConnection conn = new SqlConnection(connStr);
        if (TextBox1.Text.Length != 0 && TextBox2.Text.Length != 0)
        {
            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("select count(*) from UserTable where UId=@UId and Psd=@Psd", conn);
                cmd.Parameters.Add("@UId", SqlDbType.Char);
                cmd.Parameters.Add("@Psd", SqlDbType.Char);
                cmd.Parameters[0].Value = TextBox1.Text;
                cmd.Parameters[1].Value = TextBox2.Text;
                int count = (int)cmd.ExecuteScalar();
                if (count == 1)
                {
                    Session["CurrentUser"] = TextBox1.Text;
                    Response.Write("<script>alert('欢迎登录')</script>");
                    if (Session["CurrentUser"].Equals("admin"))
                    {
                        Response.Redirect("./AdminInfo.aspx");
                    }
                    else
                    {
                        Response.Redirect("./UserInfo.aspx");
                    }
                }
                else
                {
                    Response.Write("<script>alert('用户名或密码错误')</script>");
                }
            }
            catch
            {
                Response.Write("<script>alert('登录异常')</script>");
            }
            finally
            {
                conn.Close();
            }
        }
        else
        {
            Page.ClientScript.RegisterClientScriptBlock(GetType(), "js", "<script>alert('用户名和密码不能为空');</script>");
        }

    }

}