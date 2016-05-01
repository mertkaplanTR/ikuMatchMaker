using System.Web.Security;
using System.Web.UI;
using System.IO;
using System.Configuration;
using System;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Collections.Generic;
using System.Web.UI.WebControls;

public partial class bilgiguncelle : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);

    DataAccess _dataAccess;
    public int UserID;

    protected void Page_Load(object sender, EventArgs e)
    {

        _dataAccess = new DataAccess();
        if (Session["isim"] == null || Session["isim"] == "")
            Response.Redirect("giris.aspx");
        else
        {
            sonuc.Text = Session["isim"].ToString();
            UserID = Convert.ToInt32(Session["isim"]);
        }

        if (!Page.IsPostBack)
        {
            fillData();
            fillPhotos();
        }
        
    }
    public void fillPhotos()
    {

        IList<HttpPostedFile> Images = fuImages.PostedFiles;
        for (int i = 0; i < Images.Count; i++)
        {
            fuImages.PostedFiles[i].SaveAs(Server.MapPath("~/resim/") + fuImages.PostedFiles[i].FileName);
        }


        for (int i = 0; i < Images.Count; i++)
        {
            string path = Images[i].FileName;

            SqlCommand cmd = new SqlCommand("select [pictureID],[path] from [system].[Picture] as SP join [user].[Info] as UI on SP.userID=UI.userID where SP.userID = @userID", con);
            //SqlCommand cmd = new SqlCommand("insert into [system].[Picture] ([path],[userID]) values ('~/resim/'+@userID+'/' + @path,@userID)", con); userID klasörü oluşturup altına resimleri at !
            cmd.Parameters.AddWithValue("@path", path);
            cmd.Parameters.AddWithValue("@userID", UserID);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
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

    protected void btnUpload_Click(object sender, EventArgs e)
    {

        IList<HttpPostedFile> Images = fuImages.PostedFiles;
        for (int i = 0; i < Images.Count; i++)
        {
            fuImages.PostedFiles[i].SaveAs(Server.MapPath("~/resim/") + fuImages.PostedFiles[i].FileName);
        }

        
        for (int i = 0; i < Images.Count; i++)
        {
            string path = Images[i].FileName;

            SqlCommand cmd = new SqlCommand("insert into [system].[Picture] ([path],[userID]) values ('~/resim/'+@path,@userID)", con);
            //SqlCommand cmd = new SqlCommand("insert into [system].[Picture] ([path],[userID]) values ('~/resim/'+@userID+'/' + @path,@userID)", con); userID klasörü oluşturup altına resimleri at !
            cmd.Parameters.AddWithValue("@path", path);
            cmd.Parameters.AddWithValue("@userID", UserID);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        //uzantı kontrolü
        //if (fuImages.HasFile)
        //{
        //    string extension = Path.GetExtension(fuImages.FileName);
        //    if (extension.ToLower() == ".jpg" || extension.ToLower() == ".png" || extension.ToLower() == ".bmp")
        //    {
        //        SqlCommand cmd = new SqlCommand("select[path] from[system].Picture where[userID] = @userID", con);
        //        cmd.Parameters.AddWithValue("@userID", UserID);
        //        con.Open();
        //        cmd.ExecuteNonQuery();
        //        SqlDataReader rdr = cmd.ExecuteReader();
        //        gvPhotos.DataSource = rdr;
        //        gvPhotos.DataBind();
        //        con.Close();


        //    }


        //}



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
    protected void ddlDepartment_SelectedIndexChanged(object sender, EventArgs e)    {    }

    protected void ddlCampus_SelectedIndexChanged(object sender, EventArgs e)    {    }
}
