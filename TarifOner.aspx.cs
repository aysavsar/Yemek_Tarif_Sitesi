using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class TarifOner : System.Web.UI.Page
{
    sql_baglanti_sinifi bgl = new sql_baglanti_sinifi();

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void BtnTarifOner_Click(object sender, EventArgs e)
    {

        SqlCommand komut = new SqlCommand("insert into Tarifler (Tarif_ad,Tarif_malzeme,Tarif_yapılış,Tarif_resim,Tarif_sahip,Tarif_sahip_mail) values (@t1,@t2,@t3,@t4,@t5,@t6)", bgl.baglanti());
        komut.Parameters.AddWithValue("@t1", TxtTarifAd.Text);
        komut.Parameters.AddWithValue("@t2", TxtMalzemeler.Text);
        komut.Parameters.AddWithValue("@t3", TxtYapılış.Text);
        komut.Parameters.AddWithValue("@t4", FileUpload1.FileName);
        komut.Parameters.AddWithValue("@t5", TxtTarifÖneren.Text);
        komut.Parameters.AddWithValue("@t6", TxtMailAdresi.Text);
        komut.ExecuteNonQuery();
        bgl.baglanti().Close();
        Response.Write("Tarifiniz başarılı bir şekilde alınmıştır.");

    }
}