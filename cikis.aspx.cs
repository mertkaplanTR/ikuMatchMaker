using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class cikis : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["isim"] != null)
        {
            Session["isim"] = null;
            Response.Redirect("index.aspx");
        }
        else
        {
            Response.Redirect("giris.aspx");
        }
    }

   
}