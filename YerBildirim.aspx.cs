using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class YerBildirim : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        /*if (Session["isim"] == null || Session["isim"] == "")
            Response.Redirect("giris.aspx");*/
    }

    [WebMethod]
    public static string goster()
    {
        System.Threading.Thread.Sleep(1000);

        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString); // sonrada neklendi. 

        connection.Open();

        DataTable dtLatitandLongtit = new DataTable();

        SqlDataAdapter adapter = new SqlDataAdapter("SELECT pl.[Latitude],pl.[Longitude],pl.[LastVisit],mm.[name],mm.[surname] FROM dbo.Places as pl INNER JOIN [user].Info as mm ON pl.[userID] = mm.[userID] WHERE mm.[userID] = 1 ", connection);

        adapter.Fill(dtLatitandLongtit);

        connection.Close();

        return JsonConvert.SerializeObject(dtLatitandLongtit);
    }

    [WebMethod]
    public static string git()
    {
        System.Threading.Thread.Sleep(1000);

        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString); // sonrada neklendi. 

        connection.Open();

        DataTable dtLatitandLongtit = new DataTable();

        SqlDataAdapter adapter = new SqlDataAdapter("SELECT pl.[Latitude],pl.[Longitude],pl.[LastVisit],mm.[name],mm.[surname] FROM dbo.Places as pl INNER JOIN [user].Info as mm ON pl.[userID] = mm.[userID] WHERE mm.[userID] = 1 ", connection);

        adapter.Fill(dtLatitandLongtit);

        connection.Close();

        return JsonConvert.SerializeObject(dtLatitandLongtit);
    }

    protected void detayliAraButonu_Click(object sender, EventArgs e)
    {
        Response.Redirect("detayliAramaSonucu.aspx");
    }
}