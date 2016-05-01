using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

public class DataAccess
{ 

    public Spec userSpec = new Spec();
    string connectionString = "Data Source=DESKTOP-IEDUPGS\\DEV01;Initial Catalog=MatchMaker;Integrated Security=True;Connect Timeout=15;Encrypt=False;TrustServerCertificate=False";
    SqlConnection connection;

    public DataAccess()
    {
        OpenConnection(connectionString);
    }

    private bool OpenConnection(string pConnString)
    {
        connection = new SqlConnection(pConnString);
        connection.Open();
        if (connection.State == ConnectionState.Open)
        {
            return true;
        }
        else
        {
            return false;
        }         
    }

    private void CloseConnection()
    {
        if (connection.State != ConnectionState.Closed)
            connection.Close();
    }
    public void getUsersInfoByID(int UserID)
    {
        if (connection.State != ConnectionState.Open)
        {
            OpenConnection(connectionString);
        }
        DataTable dtUserInfo = new DataTable();
        SqlCommand cmdUserInfo = new SqlCommand("select userID,[mailAddress],[password],[phoneNumber],[facebook],[twitter],[instagram],[snapchat],[campus],[department],[shortInfo],[hairType],[hairColor],[place],[weight],[smokingHabit] from [user].[Info] where userID=@UserID", connection);
        cmdUserInfo.Parameters.AddWithValue("@UserID", UserID);
        //SqlDataAdapter adpUserInfo = new SqlDataAdapter(cmdUserInfo);
        //adpUserInfo.Fill(dtUserInfo);
        
        SqlDataReader rdr = cmdUserInfo.ExecuteReader();
        while (rdr.Read())
        {
            

            var userMail = rdr.GetValue(rdr.GetOrdinal("mailAddress"));
            var userPass = rdr.GetValue(rdr.GetOrdinal("password"));
            var userPhone = rdr.GetValue(rdr.GetOrdinal("phoneNumber"));
            var userFacebook = rdr.GetValue(rdr.GetOrdinal("facebook"));
            var userTwitter = rdr.GetValue(rdr.GetOrdinal("twitter"));
            var userInstagram = rdr.GetValue(rdr.GetOrdinal("instagram"));
            var userSnapchat = rdr.GetValue(rdr.GetOrdinal("snapchat"));
            var userCampus = rdr.GetValue(rdr.GetOrdinal("campus"));
            var userDepartment = rdr.GetValue(rdr.GetOrdinal("department"));
            var userShortInfo = rdr.GetValue(rdr.GetOrdinal("shortInfo"));
            var userHairType = rdr.GetValue(rdr.GetOrdinal("hairType"));
            var userHairColor = rdr.GetValue(rdr.GetOrdinal("hairColor"));
            var userWeight = rdr.GetValue(rdr.GetOrdinal("weight"));
            //var userWeight = rdr.GetValue(rdr.GetInt16("weight"));
            var userPlace = rdr.GetValue(rdr.GetOrdinal("place"));
            var userSmoking = rdr.GetValue(rdr.GetOrdinal("smokingHabit"));


            userSpec.MailAddress = Convert.ToString(userMail);
            userSpec.Password = Convert.ToString(userPass);
            userSpec.Phone = Convert.ToString(userPhone);
            userSpec.Facebook= Convert.ToString(userFacebook);
            userSpec.Twitter = Convert.ToString(userTwitter);
            userSpec.Instagram = Convert.ToString(userInstagram);
            userSpec.Snapchat = Convert.ToString(userSnapchat);
            userSpec.Campus = Convert.ToString(userCampus);
            userSpec.Department= Convert.ToString(userDepartment);
            userSpec.ShortInfo = Convert.ToString(userShortInfo);
            userSpec.HairType = Convert.ToString(userHairType);
            userSpec.HairColor = Convert.ToString(userHairColor);
            userSpec.weight = Convert.ToInt32(userWeight);
            //userSpec.weight = Convert.ToString(userWeight);
            userSpec.Place= Convert.ToString(userPlace);
            userSpec.Smoking = Convert.ToString(userSmoking);
        }

        //CloseConnection();
        //return dtUserInfo;
    }

    public void updateUserInfo(int UserID, string MailAddress, string Password, string Phone, string Facebook, string Twitter, string Instagram, string Snapchat, string Campus, string Department,
        string ShortInfo, string HairType, string HairColor, int Weight, string Place,string SmokingHabit)
    {
        if (connection.State != ConnectionState.Open)
            OpenConnection(connectionString);
        
        SqlCommand command = new SqlCommand("exec system.UpdateInfo @UserID,@MailAddress,@Password,@Phone,@Facebook,@Twitter,@Instagram,@Snapchat,@Campus,@Department,@ShortInfo,@HairType,@HairColor,@Weight,@Place,@SmokingHabit", connection);

        command.Parameters.AddWithValue("@UserID", UserID);
        command.Parameters.AddWithValue("@MailAddress", MailAddress);
        command.Parameters.AddWithValue("@Password", Password);
        command.Parameters.AddWithValue("@Phone", Phone);
        command.Parameters.AddWithValue("@Facebook", Facebook);
        command.Parameters.AddWithValue("@Twitter", Twitter);
        command.Parameters.AddWithValue("@Instagram", Instagram);
        command.Parameters.AddWithValue("@Snapchat", Snapchat);
        command.Parameters.AddWithValue("@Campus", Campus);
        command.Parameters.AddWithValue("@Department", Department);
        command.Parameters.AddWithValue("@ShortInfo", ShortInfo);
        command.Parameters.AddWithValue("@HairType", HairType);
        command.Parameters.AddWithValue("@HairColor", HairColor);
        //command.Parameters.AddWithValue("@Weight", userSpec.weight) ;
        command.Parameters.AddWithValue("@Weight", Weight);
        //command.Parameters.Add(Weight);
        command.Parameters.AddWithValue("@Place", Place);
        command.Parameters.AddWithValue("@SmokingHabit", SmokingHabit);
        command.ExecuteNonQuery();
        

    }
}