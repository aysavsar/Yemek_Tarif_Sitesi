using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class HakkimizdaAdmin : System.Web.UI.Page
{
    sql_baglanti_sinifi bgl = new sql_baglanti_sinifi();

    protected void Page_Load(object sender, EventArgs e)
    {
        Panel2.Visible = false;

        if (Page.IsPostBack == false)
        {
            SqlCommand komut = new SqlCommand("Select * From Hakkimizda", bgl.baglanti());
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                TextBox1.Text = dr[0].ToString();
            }
            bgl.baglanti().Close();
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Panel2.Visible = false;
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        SqlCommand kmt = new SqlCommand("update Hakkimizda set metin=@p1", bgl.baglanti());
        kmt.Parameters.AddWithValue("@p1", TextBox1.Text);
        kmt.ExecuteNonQuery();
        bgl.baglanti().Close();

    }
}