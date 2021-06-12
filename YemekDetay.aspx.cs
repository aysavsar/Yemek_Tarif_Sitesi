using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class YemekDetay : System.Web.UI.Page
{
    sql_baglanti_sinifi bgl = new sql_baglanti_sinifi();
    string yemekid = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        yemekid = Request.QueryString["Yemekid"]; //string olarak sorguyu istiyoruz.


        SqlCommand komut = new SqlCommand("Select YemekAd From Yemekler where Yemekid=@p1", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", yemekid); //parametreyi buradan alıyor.
        SqlDataReader dr = komut.ExecuteReader();
        while (dr.Read())  //okuma işlemi yapar.
        {
            Label5.Text = dr[0].ToString();
        }
        bgl.baglanti().Close();

        // Yemeğe ait yorumları listeleme
        SqlCommand komut2 = new SqlCommand("Select * From Yorumlar where Yemek_id=@p2", bgl.baglanti());
        komut2.Parameters.AddWithValue("@p2", yemekid);
        SqlDataReader dr2 = komut2.ExecuteReader();
        DataList2.DataSource = dr2;
        DataList2.DataBind();

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("insert into Yorumlar (Yorum_ad_soyad,Yorum_mail,Yorum_metni,Yemek_id) values (@p1,@p2,@p3,@p4)", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", TextBox1.Text);
        komut.Parameters.AddWithValue("@p2", TextBox2.Text);
        komut.Parameters.AddWithValue("@p3", TextBox3.Text);
        komut.Parameters.AddWithValue("@p4", yemekid);
        komut.ExecuteNonQuery();
        bgl.baglanti().Close();
        Response.Write("Yorumunuz Alınmıştır.");
    }
}