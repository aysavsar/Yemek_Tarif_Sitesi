using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Yemekler : System.Web.UI.Page
{
    sql_baglanti_sinifi bgl = new sql_baglanti_sinifi();
    string islem = "";
    string id = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {

            id = Request.QueryString["Yemekid"];
            islem = Request.QueryString["islem"];
            //KATEGORİ LİSTESİ
            SqlCommand komut2 = new SqlCommand("Select * From Kategoriler", bgl.baglanti());
            SqlDataReader dr = komut2.ExecuteReader();
            DropDownList1.DataTextField = "Kategori_ad";
            DropDownList1.DataValueField = "Kategori_id"; //kategorinin arka planında çalışır.
            DropDownList1.DataSource = dr;
            DropDownList1.DataBind();
        }

        SqlCommand komut = new SqlCommand("Select * From Yemekler", bgl.baglanti());
        SqlDataReader oku = komut.ExecuteReader();
        DataList1.DataSource = oku;
        DataList1.DataBind();

        //silme işlemi
        if (islem == "sil")
        {

            SqlCommand komutsil = new SqlCommand("Delete From Yemekler where Yemekid=@p1", bgl.baglanti());
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

    protected void Button6_Click(object sender, EventArgs e)
    {   //Yemek Ekleme
        SqlCommand komut = new SqlCommand("insert into Yemekler(YemekAd,YemekMalzeme,YemekTarif,Kategoriid) " +    "values (@p1,@p2,@p3,@p4)", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", TextBox1.Text);
        komut.Parameters.AddWithValue("@p2", TextBox2.Text);
        komut.Parameters.AddWithValue("@p3", TextBox3.Text);
        komut.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
        komut.ExecuteNonQuery();
        bgl.baglanti().Close();


        //Kategori Sayısını arttırma.
        SqlCommand komut3 = new SqlCommand("update Kategoriler set Kategori_adet=Kategori_adet+1 " +
            "where Kategori_id=@p1", bgl.baglanti());
        komut3.Parameters.AddWithValue("@p1", DropDownList1.SelectedValue);
        komut3.ExecuteNonQuery();
        bgl.baglanti().Close();
    }


}