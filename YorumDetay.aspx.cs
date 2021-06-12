using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class YorumDetay : System.Web.UI.Page
{
    sql_baglanti_sinifi bgl = new sql_baglanti_sinifi();
    string id = "";


    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["Yorumid"];

        if (Page.IsPostBack == false)
        {



            SqlCommand komut = new SqlCommand("Select Yorum_ad_soyad,Yorum_mail,Yorum_metin,YemekAd From Yorumlar inner join Yemekler on Yorumlar.Yemek_id=Yemekler.Yemekid where Yorumid=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                TextBox1.Text = dr[0].ToString();
                TextBox2.Text = dr[1].ToString();
                TextBox3.Text = dr[2].ToString();
                TextBox4.Text = dr[3].ToString();

            }
            bgl.baglanti().Close();

        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand komut2 = new SqlCommand("update Yorumlar set Yorum_metni=@p1,Yorum_Onay=@p2 where Yemek_id=@p3", bgl.baglanti());
        komut2.Parameters.AddWithValue("@p1", TextBox3.Text);
        komut2.Parameters.AddWithValue("@p2", "True");
        komut2.Parameters.AddWithValue("@p3", id);
        komut2.ExecuteNonQuery();
        bgl.baglanti().Close();
    }


}