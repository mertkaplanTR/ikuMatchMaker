using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Kayıt2Sayfa : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
            return;
        //sayfa açılırken kullanıcı login olmuşmu olmamışmı kontrol ediyoruz, 
        // login ise giriş yap sayfasını açamasın
        if (Session["UserModel"] != null)
            Response.Redirect("afterLogin.aspx");
    }

    protected void btnKayıt2Sayfa_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        DataTable dtUser = new DataTable();
        con.Open();
        string sex = ddlSex.SelectedItem.ToString();
        string birthday = txtBirthday.Text;
        string phone = txtPhone.Text;
        string facebook = txtFacebook.Text;
        string twitter = txtTwitter.Text;
        string instagram = txtInstagram.Text;
        string snapchat = txtSnapchat.Text;
        string campus = ddlCampus.SelectedItem.ToString();
        string department = ddlDepartment.SelectedItem.ToString();
        string shortInfo = txtShortInfo.Text;
        string hairType = ddlHairType.SelectedItem.ToString();
        string hairColor = ddlHairColor.SelectedItem.ToString();
        string eyeColor = ddlEyeColor.SelectedItem.ToString();
        int height = Convert.ToInt32(txtHeight.Text);
        int weight = Convert.ToInt32(txtWeight.Text);
        string place = txtPlace.Text;
        string smokingHabit = ddlSmokingHabit.SelectedItem.ToString();

        SqlCommand cmd = new SqlCommand("insert into [user].[Info]([sex],[birthday],[phoneNumber],[facebook],[twitter],[instagram],            [snapchat],[campus],[department],[shortInfo],[hairType],[hairColor],[eyeColor],[height],[weight],[place],[smokingHabit] values(@sex, @birthday, @phoneNumber, @facebook, @twitter, @instagram, @snapchat, @campus, @department,@shortInf, @hairType, @hairColor, @eyeColor, @height,@weight, @place, @smokingHabit)", con);
        cmd.Parameters.Add(new SqlParameter("@sex", sex));
        cmd.Parameters.Add(new SqlParameter("@birthday", birthday));
        cmd.Parameters.Add(new SqlParameter("@phoneNumber", phone));
        cmd.Parameters.Add(new SqlParameter("@facebook", facebook));
        cmd.Parameters.Add(new SqlParameter("@twitter", twitter));
        cmd.Parameters.Add(new SqlParameter("@instagram", instagram));
        cmd.Parameters.Add(new SqlParameter("@snapchat", snapchat));
        cmd.Parameters.Add(new SqlParameter("@campus", campus));
        cmd.Parameters.Add(new SqlParameter("@department", department));
        cmd.Parameters.Add(new SqlParameter("@shortInf", shortInfo));
        cmd.Parameters.Add(new SqlParameter("@hairType", hairType));
        cmd.Parameters.Add(new SqlParameter("@hairColor", hairColor));
        cmd.Parameters.Add(new SqlParameter("@eyeColor", eyeColor));
        cmd.Parameters.Add(new SqlParameter("@height", height));
        cmd.Parameters.Add(new SqlParameter("@weight", weight));
        cmd.Parameters.Add(new SqlParameter("@place", place));
        cmd.Parameters.Add(new SqlParameter("@smokingHabit", smokingHabit));
        int result = cmd.ExecuteNonQuery();
        if (result > 0)
        {
            lblResult.ForeColor = System.Drawing.Color.Green;
            lblResult.Text = "Sing Up Complete";
        }
        else
        {
            lblResult.ForeColor = System.Drawing.Color.Green;
            lblResult.Text = "Sing Up Failed. You should fill all context!";
        }

    }
}
