using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class begenilenKisiler : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        getInfo();
    }
    void getInfo()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString); // sonrada neklendi. 
        con.Open();
        SqlCommand getName = new SqlCommand("SELECT [name] FROM [MatchMaker].[user].[Info] where userID='3'", con);
        begenenKisiAdi.Text = getName.ExecuteScalar().ToString();
        con.Close();
    }
}