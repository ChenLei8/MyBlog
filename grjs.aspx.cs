using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Web.Security;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

public partial class grjs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Response.Write(connstr());
        if (!IsPostBack)
        {
            string connstr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True";
            SqlConnection conn = new SqlConnection(connstr);

            try
            {
                SqlDataAdapter dr = new SqlDataAdapter("select * from School", conn);
                DataSet ds = new DataSet();
                dr.Fill(ds, "temp");
                DropDownList1.DataSource = ds.Tables[0];

                DropDownList1.DataTextField = "SchoolName";
                DropDownList1.DataValueField = "SchoolNo";
                DropDownList1.DataBind();
            }
            catch (Exception ee)
            {
                throw new Exception(ee.Message);
            }
            finally
            {
                conn.Close();
            }
        }

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string connstr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True";
        SqlConnection conn = new SqlConnection(connstr);

        try
        {
            SqlDataAdapter dr = new SqlDataAdapter("select * from College where SchoolNo='" + int.Parse(DropDownList1.SelectedItem.Value) + "'", conn);
            DataSet ds = new DataSet();
            dr.Fill(ds, "temp");
            DropDownList2.DataSource = ds.Tables[0];

            DropDownList2.DataTextField = "CollegeName";
            DropDownList2.DataValueField = "CollegeNo";
            DropDownList2.DataBind();
        }
        catch (Exception ee)
        {
            throw new Exception(ee.Message);
        }
        finally
        {
            conn.Close();
        }
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        string connstr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True";
        SqlConnection conn = new SqlConnection(connstr);

        try
        {
            SqlDataAdapter dr = new SqlDataAdapter("select * from Major where CollegeNo='" + int.Parse(DropDownList2.SelectedItem.Value) + "'", conn);
            DataSet ds = new DataSet();
            dr.Fill(ds, "temp");
            DropDownList3.DataSource = ds.Tables[0];

            DropDownList3.DataTextField = "MajorName";
            DropDownList3.DataValueField = "MajorNo";
            DropDownList3.DataBind();
        }
        catch (Exception ee)
        {
            throw new Exception(ee.Message);
        }
        finally
        {
            conn.Close();
        }
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        if (ListBox2.Items.IndexOf(new ListItem(ListBox1.Text)) < 0)
        {
            ListBox2.Items.Add(ListBox1.Text);
            ListBox1.Items.Remove(ListBox1.Text);
        }
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        for (int i = 0; i <= ListBox1.Items.Count - 1; i++)
            ListBox2.Items.Add(ListBox1.Items[i].Text);
        ListBox1.Items.Clear();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (ListBox1.Items.IndexOf(new ListItem(ListBox2.Text)) < 0)
        {
            ListBox1.Items.Add(ListBox2.Text);
            ListBox2.Items.Remove(ListBox2.Text);
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        for (int i = 0; i <= ListBox2.Items.Count - 1; i++)
            ListBox1.Items.Add(ListBox2.Items[i].Text);
        ListBox2.Items.Clear();
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        if (TextBox2.Text.Trim() == "")
            Label9.Text = "学号不能为空！";
        if (TextBox1.Text.Trim() == "")
            Label10.Text = "姓名不能为空！";
        string stemp = "";
        for (int i = 0; i <= ListBox2.Items.Count - 1; i++)
            stemp += ListBox2.Items[i].Text + "<br>";
        Label7.Text = "学号：" + TextBox2.Text + "<br><br>" + "姓名：" + TextBox1.Text + "<br><br>" + "身份：" + RadioButtonList1.Text + "<br><br>"
           + "学校：" + DropDownList1.SelectedItem.Text + "<br><br>" + "学院：" + DropDownList2.SelectedItem.Text + "<br><br>" + "专业：" + DropDownList3.SelectedItem.Text
           + "<br><br>" + "成绩：" + TextBox3.Text + "<br><br>" + "喜欢的音乐：<br><br>" + stemp;

    }

    protected void TextBox2_TextChanged1(object sender, EventArgs e)
    {
        int b;
        {
            try
            {
                b = Int32.Parse(TextBox2.Text);
            }
            catch (Exception)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Test", "<script>alert('请在学号中输入数字！');</script>");
                return;
            }
        }
        if (TextBox2.Text.Trim() == "")
            Label9.Text = "学号不能为空！";
    }

}