using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Projet_De_Fin_Detude
{
    public partial class WebForm13 : System.Web.UI.Page
    {
        public static SqlConnection OCN1 = new SqlConnection(@"Data source = DESKTOP-R5K6EHP\SQLEXPRESS ; Initial Catalog = pfe2021 ; Integrated Security = true;");
        public static SqlDataReader ODR1;
        public static SqlCommand OCMD1 = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
            OCN1.Open();
            OCMD1.CommandText = "select * from dettaillscommande";
            OCMD1.Connection = OCN1;
            ODR1 = OCMD1.ExecuteReader();

            DataTable ODT1 = new DataTable();
            ODT1.Load(ODR1);
            GridView1.DataSource = ODT1;
            GridView1.DataBind();
            ODR1.Close();
            OCN1.Close();
        }
    }
}