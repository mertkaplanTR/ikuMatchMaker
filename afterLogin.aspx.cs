using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class afterLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["isim"] == null || Session ["isim"] == "")
            Response.Redirect("giris.aspx");
        else
        { 
            sonuc.Text = Session["isim"].ToString();
            
        }


         
        //alttakiler henuz session ile alınmıyor onları session id ile alip dinamik yapmamız gerekli
        //adem database'i ayarladıktan sonra id'ye gore alıp dinamik yap!

        getLikedNumber();
        getLikerNumber();
        getInfo();
        
    
    }

    private void detayliAraButonu_Click()
    {
        if(campus.SelectedValue=="1")
        {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString); // sonrada neklendi. 
        con.Open();
        string sql = "select * from [user].[Info] where campus=@userID";
        SqlCommand getQuery = new SqlCommand(sql, con);
        getQuery.Parameters.AddWithValue("userID", 5);
        querySonuc.Text = getQuery.ExecuteScalar().ToString();
        con.Close();
            }
    }

    protected void detayliAraButonu_Click(object sender, EventArgs e)
    { Response.Redirect("giris.aspx"); }

    void getLikedNumber()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString); // sonrada neklendi. 
        con.Open();
        string sql = "select count(*) from [system].[Likes] where person1=@userID";
        SqlCommand getLikedNumber = new SqlCommand(sql, con);
        getLikedNumber.Parameters.AddWithValue("userID", sonuc.Text);
        likedNumber.Text = getLikedNumber.ExecuteScalar().ToString();
        con.Close();
    }

    void getLikerNumber()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString); // sonrada neklendi. 
        con.Open();
        string sql = "select count(*) from [system].[Likes] where person2=@userID";
        SqlCommand getLikerNumber = new SqlCommand(sql, con);
        getLikerNumber.Parameters.AddWithValue("userID", sonuc.Text);
        likerNumber.Text = getLikerNumber.ExecuteScalar().ToString();
        con.Close();
    }


    void getInfo()
    {
       
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString); // sonrada neklendi. 
        con.Open();
        //SECURILEY SOLVED THIS  
        
        string sql = "SELECT [name] FROM [MatchMaker].[user].[Info] where userID=@userID";
        SqlCommand getName = new SqlCommand(sql,con);
        getName.Parameters.AddWithValue("userID", sonuc.Text);
        isim.Text = getName.ExecuteScalar().ToString();

        string sql2 = "SELECT [surname] FROM [MatchMaker].[user].[Info] where userID=@userID";
        SqlCommand getSurname = new SqlCommand(sql2, con);
        getSurname.Parameters.AddWithValue("userID", sonuc.Text);
        soyadi.Text = getSurname.ExecuteScalar().ToString();

        string sql3 = "SELECT [mailAddress] FROM [MatchMaker].[user].[Info] where userID=@userID";
        SqlCommand getEmail = new SqlCommand(sql3, con);
        getEmail.Parameters.AddWithValue("userID", sonuc.Text);
        email.Text = getEmail.ExecuteScalar().ToString();
        con.Close();
    }


  

}