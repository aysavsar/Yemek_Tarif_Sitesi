using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Kategoriler : System.Web.UI.Page
{

    sql_baglanti_sinifi bgl = new sql_baglanti_sinifi();
    string id = "";
    string islem = "";

    protected void Page_Load(object sender, EventArgs e)
    {

        if (Page.IsPostBack == false)
        {
            id = Request.QueryString["Kategori_id"];
            islem = Request.QueryString["islem"];

        }
        SqlCommand komut = new SqlCommand("Select * From Kategoriler", bgl.baglanti());
        SqlDataReader oku = komut.ExecuteReader();
        DataList1.DataSource = oku;
        DataList1.DataBind();

        //silme işlemi
        if (islem == "sil")
        {

            SqlCommand komutsil = new SqlCommand("Delete From Kategoriler where Kategori_id=@p1", bgl.baglanti());
            komutsil.Parameters.AddWithValue("@p1", id);
            komutsil.ExecuteNonQuery();
            bgl.baglanti().Close();
        }

        Panel2.Visible = false;
        Panel4.Visible = false;

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

    protected void Button5_Click(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("insert into Kategoriler(Kategori_ad) values (@p1)", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", TextBox1.Text);
        komut.ExecuteNonQuery();
        bgl.baglanti().Close();
    }

}