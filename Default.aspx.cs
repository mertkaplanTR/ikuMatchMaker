using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void girisButonu_Click1(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        con.Open();
        if (DropDownList1.SelectedValue=="0")
        {
            
            string sql3 = "select [name] from [user].[Info] where campus=@userID";
            SqlCommand getEmail = new SqlCommand(sql3, con);
            getEmail.Parameters.AddWithValue("userID",5);
            Label1.Text = getEmail.ExecuteScalar().ToString();
            con.Close();
        }
        else
            Label1.Text="not from db";
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}