//using System;
//using System.Collections.Generic;
//using System.Configuration;
//using System.Data;
//using System.Data.SqlClient;
//using System.Linq;
//using System.Web;
//using System.Web.UI;
//using System.Web.UI.WebControls;

//public partial class bilgiguncelle : System.Web.UI.Page
//{
//    protected void Page_Load(object sender, EventArgs e)
//    {
//        if (IsPostBack)
//            return;
//        //sayfa açılırken kullanıcı login olmuşmu olmamışmı kontrol ediyoruz, 
//        // login ise giriş yap sayfasını açamasın
//        if (Session["UserModel"] != null)
//            Response.Redirect("afterLogin.aspx");
//    }

//    protected void kaydolButon_Click(object sender, EventArgs e)
//    {
//        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
//        DataTable dtUser = new DataTable();
//        con.Open();
//        string name = firstName.Text;
//        string surname = surName.Text;
//        string email = mailAdresi.Text;
//        string password = sifresi.Text;
//        SqlCommand cmd = new SqlCommand("Insert Into [user].[Info] (name,surname,[mailAddress],[password]) Values (@name,@surname,@mailAddress,@password)", con);
//        cmd.Parameters.Add(new SqlParameter("@name", name));
//        cmd.Parameters.Add(new SqlParameter("@surname", surname));
//        cmd.Parameters.Add(new SqlParameter("@mailAddress", email));
//        cmd.Parameters.Add(new SqlParameter("@password", password));
//        int result = cmd.ExecuteNonQuery();
//        if (result > 0)
//        {
//            lblResult.ForeColor = System.Drawing.Color.Green;
//            lblResult.Text = "Sing Up Complete";
//        }
//        else
//        {
//            lblResult.ForeColor = System.Drawing.Color.Green;
//            lblResult.Text = "Sing Up Failed. You should fill all context!";
//        }

//    }
//}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class bilgiguncelle : System.Web.UI.Page
{
    DataAccess _dataAccess;
    //public int UserID = 2;
    public int UserID;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        
        _dataAccess = new DataAccess();
        if (Session["isim"] == null || Session["isim"] == "")
            Response.Redirect("giris.aspx");
        else
        {
            sonuc.Text = Session["isim"].ToString();
            UserID = Convert.ToInt32(Session["isim"]) + 1;
        }

        if (!Page.IsPostBack)
        {
            fillData();
        }

    }
    
    public void fillData()
    {
        //_dataAccess.getUsersInfoByID(UserID);
        _dataAccess.getUsersInfoByID(UserID);
        txtMailAddress.Text = _dataAccess.userSpec.MailAddress;
        //txtPassword.Text = _dataAccess.userSpec.Password;
        //txtConfirmPassword.Text = _dataAccess.userSpec.Password;
        txtPhone.Text = _dataAccess.userSpec.Phone;
        txtFacebook.Text = _dataAccess.userSpec.Facebook;
        txtTwitter.Text = _dataAccess.userSpec.Twitter;
        txtInstagram.Text = _dataAccess.userSpec.Instagram;
        txtSnapchat.Text = _dataAccess.userSpec.Snapchat;
        ddlCampus.Text = _dataAccess.userSpec.Campus;
        ddlDepartment.Text = _dataAccess.userSpec.Department;
        txtShortInfo.Text = _dataAccess.userSpec.ShortInfo;
        txtHairType.Text = _dataAccess.userSpec.HairType;
        txtHairColor.Text = _dataAccess.userSpec.HairColor;
        txtWeight.Text = _dataAccess.userSpec.weight.ToString();
        txtPlace.Text = _dataAccess.userSpec.Place;

    }

    protected void btnUpdateInfo_Click(object sender, EventArgs e)
    {

        string MailAddress = txtMailAddress.Text;
        string Password = txtPassword.Text;


        if (txtPassword.Text == txtConfirmPassword.Text || txtPassword.Text != null)
        {
            Password = Convert.ToString(txtConfirmPassword.Text);
            lblConfirmPassword.Visible = false;
        }
        else
        {
            lblConfirmPassword.Visible = true;
        }

        string Phone = txtPhone.Text;
        string Facebook = txtFacebook.Text;
        string Twitter = txtTwitter.Text;
        string Instagram = txtInstagram.Text;
        string Snapchat = txtSnapchat.Text;
        string Campus = ddlCampus.SelectedItem.ToString();
        string Department = ddlDepartment.SelectedItem.ToString();
        string ShortInfo = txtShortInfo.Text;
        string HairType = txtHairType.Text;
        string HairColor = txtHairColor.Text;
        int Weight = Convert.ToInt16(txtWeight.Text);
        string Place = txtPlace.Text;
        string SmokingHabit = ddlSmokingHabit.SelectedItem.ToString();



        if (txtPassword.Text == txtConfirmPassword.Text && txtPassword.Text != null && txtConfirmPassword.Text != null)
        {
            {


                if (txtConfirmPassword.Text.Length > 5 && txtConfirmPassword.Text.Length < 17)
                {

                    lblPasswordLength.Visible = false;
                    if (Convert.ToInt16(txtWeight.Text) > 0)
                    {
                        lblWeight.Visible = false;
                        //MERT BURAYA BAK KANKA SESSION ICIN
                        _dataAccess.updateUserInfo(UserID, MailAddress, Password, Phone, Facebook, Twitter, Instagram, Snapchat, Campus, Department, ShortInfo, HairType, HairColor, Weight, Place, SmokingHabit);
                        lblResult.Text = "Bilgiler başarıyla güncellendi !";
                    }
                    
                    else
                    {
                        lblWeight.Visible = true;
                    }
                }
                else
                {

                    lblPasswordLength.Visible = true;
                }

            }


        }
        else
        {
            lblPasswordLength.Visible = false;
            lblConfirmPassword.Visible = true;
        }


    }

    protected void ddlDepartment_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void ddlCampus_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}