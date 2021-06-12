using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class TarifOnerDetay : System.Web.UI.Page
{
    sql_baglanti_sinifi bgl = new sql_baglanti_sinifi();
    string id = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["Tarif_id"];

        if (Page.IsPostBack == false)
        {

            SqlCommand komut = new SqlCommand("Select * From Tarifler where Tarif_id=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                TextBox1.Text = dr[1].ToString();
                TextBox2.Text = dr[2].ToString();
                TextBox3.Text = dr[3].ToString();

                TextBox4.Text = dr[5].ToString();
                TextBox5.Text = dr[6].ToString();

            }
            bgl.baglanti().Close();


            //KATEGORİ LİSTESİ
            SqlCommand kmt = new SqlCommand("Select * From Kategoriler", bgl.baglanti());
            SqlDataReader oku = kmt.ExecuteReader();
            DropDownList1.DataTextField = "Kategori_ad";
            DropDownList1.DataValueField = "Kategori_id";

            DropDownList1.DataSource = oku;
            DropDownList1.DataBind();

        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        //DURUM GÜNCELLEME
        SqlCommand komut2 = new SqlCommand("update Tarifler set Tarif_durum=1 where Tarif_id=@p1", bgl.baglanti());
        komut2.Parameters.AddWithValue("@p1", id);
        komut2.ExecuteNonQuery();
        bgl.baglanti().Close();

        //YEMEĞİ ANASAYFAYA EKLEME
        SqlCommand komut3 = new SqlCommand("insert into Yemekler (YemekAd,YemekMalzeme,YemekTarif,Kategoriid) values (@p1,@p2,@p3,@p4)", bgl.baglanti());
        komut3.Parameters.AddWithValue("@p1", TextBox1.Text);
        komut3.Parameters.AddWithValue("@p2", TextBox2.Text);
        komut3.Parameters.AddWithValue("@p3", TextBox3.Text);
        komut3.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
        komut3.ExecuteNonQuery();
        bgl.baglanti().Close();


    }


}