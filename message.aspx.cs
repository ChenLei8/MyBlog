using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class message : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["CurrentUser"] == null)
            Response.Redirect("Login.aspx");
        if (!IsPostBack)
        {
            lblUser.Text = Session["CurrentUser"].ToString();
            string strSel = "";
            string strCon = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=E:\Personal\Documents\VisualStudio2019\MyBlog1\App_Data\Database1.mdf;Integrated Security=True";
            SqlConnection con = new SqlConnection(strCon);
            con.Open();
            strSel = "select * from message";
            SqlCommand cmd = new SqlCommand(strSel, con);
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds, "message");
            con.Close();
            gvMessage.DataSource = ds.Tables["message"].DefaultView;
            gvMessage.DataBind();
        }
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string strCon = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=E:\Personal\Documents\VisualStudio2019\MyBlog1\App_Data\Database1.mdf;Integrated Security=True";
        SqlConnection con = new SqlConnection(strCon);
        con.Open();
        string strIns = "insert into message values(N'" + lblUser.Text.ToString() + "',N'" + txtMessage.Text.ToString() + "','" + DateTime.Now.ToString() + "')";
        SqlCommand cmd = new SqlCommand(strIns, con);
        cmd.ExecuteNonQuery();

        Response.Redirect("~/message.aspx");
        string strSel = "select * from message";
        cmd.CommandText = strSel;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds, "message");
        con.Close();
        txtMessage.Text = "";
        gvMessage.DataSource = ds.Tables["message"].DefaultView;
        gvMessage.DataBind();

    }

}