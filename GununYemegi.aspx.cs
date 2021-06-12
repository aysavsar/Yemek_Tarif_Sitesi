using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class GununYemegi : System.Web.UI.Page
{

    sql_baglanti_sinifi bgl = new sql_baglanti_sinifi();
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("Select * from Yemekler where Durum=1",bgl.baglanti());
        SqlDataReader oku = komut.ExecuteReader();
        DataList2.DataSource = oku;
        DataList2.DataBind();


    }
}