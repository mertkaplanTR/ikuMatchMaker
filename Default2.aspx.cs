using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Default2 : System.Web.UI.Page
{
   

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        sonuc.Text = GridView1.SelectedRow.Cells[1].Text;
        mesajAlani.Text = GridView1.SelectedRow.Cells[1].Text;
    }


    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["isim"] == null || Session["isim"] == "")
            Response.Redirect("giris.aspx");
        else
        {
            sonuc.Text = Session["isim"].ToString();

        }

    }

    void mesajgonder()
    {

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString); // sonrada neklendi. 
        con.Open();
        //SECURILEY SOLVED THIS  


        string kimden = sonuc.Text;
        string kime = gonderilecekID.Text; //editlenecek
        string mesaj = mesajAlani.Text;

        SqlCommand cmd = new SqlCommand("Insert Into [dbo].[mesajlar] (kimden,kime,[mesaj]) Values (@kimden,@kime,@mesaj)", con);
        cmd.Parameters.Add(new SqlParameter("@kimden", kimden));
        cmd.Parameters.Add(new SqlParameter("@kime", kime));
        cmd.Parameters.Add(new SqlParameter("@mesaj", mesaj));

        int result = cmd.ExecuteNonQuery();
        if (result > 0)
        {
            mesajAlani.Text = "done";
        }
        else
        {

        }
    }

    protected void submit_Click(object sender, EventArgs e)
    {
        mesajgonder();
    }
}

   