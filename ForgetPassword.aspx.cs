using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;
using System.Text;
using System.Net;
using System.Net.Mail;


namespace Projet_De_Fin_Detude
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            SqlConnection OCN1 = new SqlConnection(cs);
            string sqlquery = "select email,mdps from signup where email=@email ";
            SqlCommand OCMD1 = new SqlCommand(sqlquery, OCN1);
            OCMD1.Parameters.AddWithValue("@email", TextBox1.Text);
            OCN1.Open();
            SqlDataReader ODR1 = OCMD1.ExecuteReader();
            if (ODR1.Read())
            {
                string username = ODR1["email"].ToString();
                string password = ODR1["mdps"].ToString();

                MailMessage mm = new MailMessage("khawahii8@gmail.com", TextBox1.Text);
                mm.Subject = "Your Password !";
                mm.Body = string.Format("Hello : <h1>{0}</h1> is your Email id <br/> your password is <h1>{1}</h1>", username, password);
                mm.IsBodyHtml = true;
                SmtpClient smtp = new SmtpClient("Smpt.gmail.com", 587);
                //smtp.Host = "Smpt.gmail.com";
                smtp.EnableSsl = true;
                NetworkCredential nc = new NetworkCredential("khawahii8@gmail.com", "Kha##123");
                //nc.UserName = "khawahii8@gmail.com";
                //nc.Password = "Kha##123";
                smtp.UseDefaultCredentials = true;
                smtp.Credentials = nc;
                //smtp.Port = 587;
                smtp.Send(mm);
                Label1.Text = " You password has ben sent to " + TextBox1.Text;

            }
            else
            {
                Label1.Text = TextBox1.Text + "-This Email ID Is not Exist in our Database ! ";
            }
        }
    }
}