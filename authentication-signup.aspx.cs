using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Projet_De_Fin_Detude
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection OCN1 = new SqlConnection(@"Data source = DESKTOP-R5K6EHP\SQLEXPRESS ; Initial Catalog = pfe2021 ; Integrated Security = true;");
            OCN1.Open();
            SqlCommand OCMD1 = new SqlCommand("insert into signup " + "(prenom,nom,email,mdps,country,phone) values(@prenom,@nom,@email,@mdps,@country,@phone)", OCN1);
            OCMD1.Parameters.AddWithValue("@prenom", inputFirstName.Text);
            OCMD1.Parameters.AddWithValue("@nom", inputLastName.Text);
            OCMD1.Parameters.AddWithValue("@email", inputEmailAddress.Text);
            OCMD1.Parameters.AddWithValue("@mdps", inputChoosePassword.Text);
            OCMD1.Parameters.AddWithValue("@country", inputChoosecountry.Text);
            OCMD1.Parameters.AddWithValue("@phone", inputChoosephone.Text);
            OCMD1.ExecuteNonQuery();
            OCN1.Close();
            Label1.Text = "Registered Successfully !";
        }
    }
}