using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;

namespace Projet_De_Fin_Detude
{
    public partial class WebForm11 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string to, from, pass, mail;
            to = "djkhalil277@gmail.com";
            pass = "Kha##123";
            from = (txtSender.Text).ToString();
            mail = (txtSender.Text).ToString() + "\r\n" + (txtMil.Text).ToString() + "\r\n" + (txtphone.Text).ToString();
            MailMessage mesage = new MailMessage();
            mesage.To.Add(to);
            mesage.From = new MailAddress(from);
            mesage.Body = mail;
            mesage.Subject = "Testing mail";
            SmtpClient smtp = new SmtpClient("smtp.gmail.com");
            smtp.EnableSsl = true;
            smtp.Port = 587;
            smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtp.Credentials = new NetworkCredential(to, pass);
            smtp.Send(mesage);
        }
    }
}