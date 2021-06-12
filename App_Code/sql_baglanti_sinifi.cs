using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;


public class sql_baglanti_sinifi
{
    public SqlConnection baglanti()
    {
        SqlConnection baglan = new SqlConnection(@"Data Source=YASEMIN\PıNARSERVER;Initial Catalog=Yemek_Tarifi_Sitesi;Integrated Security=True");
        baglan.Open();
        return baglan;


    }
}