using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class giris : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();

    }
    protected void girisButonu_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "[dbo].[SP2_LOGIN]";
        cmd.Parameters.Add("@mailAddress", mailAddress.Text);
        cmd.Parameters.Add("@password", password.Text);
        cmd.Parameters.Add("@sonuc", SqlDbType.NChar, 10);
        cmd.Parameters["@sonuc"].Direction = ParameterDirection.Output;

        try
        {
            cmd.ExecuteNonQuery();
            string dsonuc = cmd.Parameters["@sonuc"].Value.ToString();
            if (dsonuc == null || dsonuc == "")
                ErrorLabel.Text = "Hatali mail veya sifre";
            else
            {
                Session["isim"] = dsonuc;
                Response.Redirect("afterLogin.aspx");
            }
        }
        catch (Exception)
        {
            ErrorLabel.Text = "islem hatali";
        }



    }
}