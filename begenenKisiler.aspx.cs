using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class begenenKisiler : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["isim"] == null || Session["isim"] == "")
            Response.Redirect("giris.aspx");
        else
        {
            sonuc.Text = Session["isim"].ToString();

        }
        getInfo();
    }

    void getInfo()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString); // sonrada neklendi. 
        con.Open();
        //query gunccelenecek sadece
        string sql = "SELECT [name] FROM [MatchMaker].[user].[Info] where userID=@userID";
        SqlCommand getName = new SqlCommand(sql, con);
        getName.Parameters.AddWithValue("userID", sonuc.Text);
        begenenKisiAdi.Text = getName.ExecuteScalar().ToString();

        string sql2 = "select campus FROM [MatchMaker].[user].[Info] where userID=@userID";
        SqlCommand getCampus = new SqlCommand(sql2, con);
        getCampus.Parameters.AddWithValue("userID", sonuc.Text);
        campus.Text = getCampus.ExecuteScalar().ToString();

        string sql3 = "select department FROM [MatchMaker].[user].[Info] where userID=@userID";
        SqlCommand getDepartment = new SqlCommand(sql3, con);
        getDepartment.Parameters.AddWithValue("userID", sonuc.Text);
        department.Text = getDepartment.ExecuteScalar().ToString();






    }
}