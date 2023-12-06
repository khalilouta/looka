using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;


namespace Projet_De_Fin_Detude
{
    public partial class WebForm10 : System.Web.UI.Page
    {
        public static SqlConnection OCN1 = new SqlConnection(@"Data source = DESKTOP-R5K6EHP\SQLEXPRESS ; Initial Catalog = pfe2021 ; Integrated Security = true;");
        public static SqlDataReader ODR1;
        public static SqlCommand OCMD1 = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
            OCN1.Open();
            OCMD1.Connection = OCN1;
            OCMD1.CommandText = "select * from blog where idblog =  " + Request.QueryString["id"];
            ODR1 = OCMD1.ExecuteReader();
            while (ODR1.Read())
            {
                Byte[] bite = (byte[])ODR1[0];
                string str = Convert.ToBase64String(bite);
                img1.Src = "data:Image/png;base64," + str;
                title.InnerText = ODR1[1].ToString();
                P.InnerText = ODR1[2].ToString();
            }
            OCN1.Close();
        }
    }
}