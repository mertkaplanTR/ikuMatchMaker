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
            sonuc.Visible = false;
        }


         
        //alttakiler henuz session ile alınmıyor onları session id ile alip dinamik yapmamız gerekli
        //adem database'i ayarladıktan sonra id'ye gore alıp dinamik yap!

        getLikedNumber();
        getLikerNumber();
        getInfo();
        getNewNotification();
   
    
    }

    void getSessions()
    {
        Session["cinsiyet"] = sex.Text;
        Session["kampus"] = campus.Text;
        Session["bolum"] = bolum.Text;
        Session["sactipi"] = sacTipi.Text;
        Session["sacrengi"] = sacRengi.Text;
        Session["gozrengi"] = gozRengi.Text;
    }
 
  

    void getNewNotification()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString); // sonrada neklendi. 
        con.Open();
        string sql = "select count(*) from [system].[Likes] where person2=1 and isOpen=0";
        SqlCommand getLikedNumber = new SqlCommand(sql, con);
        getLikedNumber.Parameters.AddWithValue("userID", sonuc.Text);
        sonuc2.Text = getLikedNumber.ExecuteScalar().ToString();
        con.Close();
    }


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


    protected void detayliAraButonu_Click(object sender, EventArgs e)
    {
        getSessions();
        Response.Redirect("detayliAramaSonucu.aspx");
       // Label3.Text = Session["cinsiyet"].ToString();
        //sessionu basarılı sekilde alıyor demek!
    }
}