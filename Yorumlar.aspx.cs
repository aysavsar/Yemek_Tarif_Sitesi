using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Yorumlar : System.Web.UI.Page
{
    sql_baglanti_sinifi bgl = new sql_baglanti_sinifi();

    protected void Page_Load(object sender, EventArgs e)
    {
        Panel2.Visible = false;
        Panel4.Visible = false;

        //ONAYLI YORUMLAR LİSTESİ
        SqlCommand komut = new SqlCommand("Select * From Yorumlar where Yorum_Onay=1", bgl.baglanti());
        SqlDataReader dr = komut.ExecuteReader();
        DataList1.DataSource = dr;
        DataList1.DataBind();


        //ONAYSIZ YORUMLAR LİSTESİ
        SqlCommand komut2 = new SqlCommand("Select * From Yorumlar where Yorum_Onay=0", bgl.baglanti());
        SqlDataReader dr2 = komut2.ExecuteReader();
        DataList2.DataSource = dr2;
        DataList2.DataBind();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Panel2.Visible = false;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel4.Visible = true;

    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Panel4.Visible = false;
    }



}