using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EditUserInfo : System.Web.UI.Page
{
    DataAccess _dataAccess;
    public int UserID = 2;
    protected void Page_Load(object sender, EventArgs e)
    {
        _dataAccess = new DataAccess();
        if (!Page.IsPostBack)
        {
            fillData();
        }
        
    }

    public void fillData()
    {
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
        string Password=txtPassword.Text;
        

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



        if (txtPassword.Text == txtConfirmPassword.Text && txtPassword.Text != null && txtConfirmPassword.Text!=null ) {
            {
                
                
                if(txtConfirmPassword.Text.Length > 5 && txtConfirmPassword.Text.Length < 17 ) {

                    lblPasswordLength.Visible = false;
                    if (Convert.ToInt16(txtWeight.Text) > 0)
                    {
                        lblWeight.Visible = false;
                        _dataAccess.updateUserInfo(UserID, MailAddress, Password, Phone, Facebook, Twitter, Instagram, Snapchat, Campus, Department, ShortInfo, HairType, HairColor, Weight, Place, SmokingHabit);
                    }
                    //_dataAccess.updateUserInfo(UserID, MailAddress, Password, Phone, Facebook, Twitter, Instagram, Snapchat, Campus, Department, ShortInfo, HairType, HairColor, Weight, Place, SmokingHabit);
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
}