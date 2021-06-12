using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class YemekDuzenle : System.Web.UI.Page
{
    sql_baglanti_sinifi bgl = new sql_baglanti_sinifi();
    string yemekid = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        

        int yemekid = Convert.ToInt32(Request.QueryString["Yemekid"]);

        
        //string olarak sorguyu istiyoruz.


        SqlCommand komut = new SqlCommand("Select YemekAd From Yemekler where Yemekid=@p1", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", (yemekid > 0 ? yemekid : 0));
            //parametreyi buradan alıyor.
        SqlDataReader dr = komut.ExecuteReader();
        while (dr.Read())  //okuma işlemi yapar.
        {
            TextBox1.Text = dr[1].ToString();
            TextBox2.Text = dr[2].ToString();
            TextBox3.Text = dr[3].ToString();
        }
        bgl.baglanti().Close();


        if (Page.IsPostBack == false)
        {
            SqlCommand komut3 = new SqlCommand("Select *From Kategoriler", bgl.baglanti());
            SqlDataReader dr3 = komut3.ExecuteReader();
            DropDownList1.DataTextField = "Kategori_ad";
            DropDownList1.DataValueField = "Kategori_id";

            DropDownList1.DataSource = dr3;
            DropDownList1.DataBind();
        }

        

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("update Yemekler set" +
            " YemekAd=@p1,YemekMalzeme=@p2,YemekTarifi=@p3,Kategoriid=@p4 where Yemekid=@p5", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", TextBox1.Text);
        komut.Parameters.AddWithValue("@p2", TextBox2.Text);
        komut.Parameters.AddWithValue("@p3", TextBox3.Text);
        komut.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
        komut.Parameters.AddWithValue("@p5", yemekid);
        komut.ExecuteNonQuery();
        bgl.baglanti().Close();
       
    }




    protected void Button3_Click(object sender, EventArgs e)
    {

        //tüm yemeklerin durumunu false yaptık
        SqlCommand komut = new SqlCommand("update Yemekler set Durum=0", bgl.baglanti());
        komut.ExecuteNonQuery();
        bgl.baglanti().Close();

        //günün yemeği için id ye göre true yapalım

        SqlCommand komut2 = new SqlCommand("update Yemekler set Durum=1 where Yemekid=@p1", bgl.baglanti());
        komut2.Parameters.AddWithValue("@p1", yemekid);
        komut2.ExecuteNonQuery();
        bgl.baglanti().Close();
    }
}