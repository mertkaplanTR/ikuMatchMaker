using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class notification : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }





    protected void bildirimGosterButonu_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString); // sonrada neklendi. 
        con.Open();
        string sql = "select count(*) from [system].[Likes] where person2=1 and isOpen=0";
        SqlCommand getLikedNumber = new SqlCommand(sql, con);
        sonucuGoster.Text = getLikedNumber.ExecuteScalar().ToString();
        con.Close();
    }
    protected void islemdenSonraButonu_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString); // sonrada neklendi. 
        con.Open();
        string sql2 = "update [system].[Likes] set isOpen=1 where person2=1";
        SqlCommand updateLikeNumber = new SqlCommand(sql2, con);
        updateLikeNumber.ExecuteScalar();
        con.Close();
    }





   
    protected void isimleriGoster_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString); // sonrada neklendi. 
        con.Open();
        string sql2 = "select u.name,u.surname from [user].[Info] as u inner join [system].[Likes] as t on t.person1=u.userID WHERE t.isOpen=0 and t.person2=1";
        SqlCommand getLikersName = new SqlCommand(sql2, con);
    }
}