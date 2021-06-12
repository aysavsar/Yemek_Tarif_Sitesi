using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class KategoriDuzenle : System.Web.UI.Page
{
    sql_baglanti_sinifi bgl = new sql_baglanti_sinifi();
    string id = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["Kategori_id"];


        if (Page.IsPostBack == false)   //sayfayı yeniden yükleme bi kere yüklediğinde o haliyle al daha değiştirme o kısmı demek.

        {
            SqlCommand komut = new SqlCommand("Select * From Kategoriler where Kategori_id=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                TextBox1.Text = dr[1].ToString();
                TextBox2.Text = dr[2].ToString();

            }
            bgl.baglanti().Close();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("update Kategoriler set Kategori_ad=@p1,Kategori_adet=@p2 where Kategori_id=@p3", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", TextBox1.Text);
        komut.Parameters.AddWithValue("@p2", TextBox2.Text);
        komut.Parameters.AddWithValue("@p3", id);
        komut.ExecuteNonQuery();
        bgl.baglanti().Close();


    }


}