using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["isim"] != null )
            Response.Redirect("afterLogin.aspx");
        else
        {
            

        }
    }

    protected void kaydolButon_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        DataTable dtUser = new DataTable();
        con.Open();
        string name = firstName.Text;
        string surname=surName.Text;
        string email=mailAdresi.Text;
        string password = sifresi.Text;
        SqlCommand cmd = new SqlCommand("Insert Into [user].[Info] (name,surname,[mailAddress],[password]) Values (@name,@surname,@mailAddress,@password)",con);
        cmd.Parameters.Add(new SqlParameter("@name", name));
        cmd.Parameters.Add(new SqlParameter("@surname", surname));
        cmd.Parameters.Add(new SqlParameter("@mailAddress", email));
        cmd.Parameters.Add(new SqlParameter("@password", password));
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