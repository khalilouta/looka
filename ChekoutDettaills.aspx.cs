using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using System.Configuration;
namespace Projet_De_Fin_Detude
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        public static SqlConnection OCN1 = new SqlConnection(@"Data source = DESKTOP-R5K6EHP\SQLEXPRESS ; Initial Catalog = pfe2021 ; Integrated Security = true;");
        public static SqlDataReader ODR1;
        public static SqlDataReader ODR2;
        public static SqlCommand OCMD1 = new SqlCommand();
        public static SqlCommand OCMD2 = new SqlCommand();
        public static SqlCommand OCMD3 = new SqlCommand();
        public static SqlCommand OCMD4 = new SqlCommand();
        public static SqlCommand OCMD5 = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                Session["FullName"] = "Full Name :" + TextBox1.Text + TextBox2.Text;
                Session["CIN"] = "CIN :" + TextBox3.Text;
                Session["Phone"] = "Number Phone :" + TextBox4.Text;
                Session["Adresse"] = "Adresse :" + TextBox7.Text;



                OCN1.Open();
                OCMD1.CommandText = " insert into  client values ('" + TextBox3.Text + "','" + TextBox1.Text + "', '" + TextBox2.Text + "','" + TextBox6.Text + "' )";
                OCMD1.Connection = OCN1;
                OCMD1.ExecuteNonQuery();

                OCMD3.CommandText = " select max(id) from client";
                OCMD3.Connection = OCN1;
                int var1 = (int)OCMD3.ExecuteScalar();

                OCMD2.CommandText = " insert into  commande  values ('" + Session["PName"].ToString() + "', " + Session["Price"].ToString() + " , '" + Session["IDP"].ToString() + "'," + var1 + " )";
                OCMD2.Connection = OCN1;
                OCMD2.ExecuteNonQuery();

                OCMD4.CommandText = " select max(NUM) from commande";
                OCMD4.Connection = OCN1;
                int var2 = (int)OCMD4.ExecuteScalar();
                OCMD2.CommandText = " insert into  dettaillscommande  values (" + var2 + ", '" + Session["IDP"].ToString() + "', " + Session["Quantit"].ToString() + " )";
                OCMD2.Connection = OCN1;
                OCMD2.ExecuteNonQuery();



                OCN1.Close();
                Response.Redirect("~/ChekoutPayement.aspx");
            }
            else
            {
                Response.Redirect("~/authentication_signin.aspx");
            }


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AllProduct.aspx");
        }
    }
}