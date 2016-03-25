﻿using System;
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
        if (Session["isim"] == null || Session["isim"] == "")
            Response.Redirect("giris.aspx");
        else
        name.Text = Session["isim"].ToString();
       
        //alttakiler henuz session ile alınmıyor onları session id ile alip dinamik yapmamız gerekli
        //adem database'i ayarladıktan sonra id'ye gore alıp dinamik yap!
        
        getLikedNumber();
        getLikerNumber();
        getInfo();
    }

    void getLikedNumber()
    {
        //person id'si 3 olan kişi kaç kişiyi like etmiş?
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString); // sonrada neklendi. 
        con.Open();
        SqlCommand getLikedNumber = new SqlCommand("select count(*) from [system].[Likes] where person1='3'", con);
        likedNumber.Text = getLikedNumber.ExecuteScalar().ToString();
        con.Close();
    }

    void getLikerNumber()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString); // sonrada neklendi. 
        con.Open();
        SqlCommand getLikerNumber = new SqlCommand("select count(*) from [system].[Likes] where person2='3'", con);
        likerNumber.Text = getLikerNumber.ExecuteScalar().ToString();
        con.Close();
    }


    void getInfo()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString); // sonrada neklendi. 
        con.Open();
        SqlCommand getName = new SqlCommand("SELECT [name] FROM [MatchMaker].[user].[Info] where userID='3'", con);
        isim.Text = getName.ExecuteScalar().ToString();
        SqlCommand getSurname = new SqlCommand("SELECT [surname] FROM [MatchMaker].[user].[Info] where userID='3'", con);
        soyadi.Text = getSurname.ExecuteScalar().ToString();
        SqlCommand getEmail = new SqlCommand("SELECT [mailAddress] FROM [MatchMaker].[user].[Info] where userID='3'", con);
        email.Text = getEmail.ExecuteScalar().ToString();
        con.Close();
    }
}