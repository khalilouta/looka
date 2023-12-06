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
//using System.Reflection.Metadata;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;
using iTextSharp.text;
using Document = iTextSharp.text.Document;

namespace Projet_De_Fin_Detude
{
    public partial class WebForm17 : System.Web.UI.Page
    {
        public static SqlConnection OCN1 = new SqlConnection(@"Data source = DESKTOP-R5K6EHP\SQLEXPRESS ; Initial Catalog = pfe2021 ; Integrated Security = true;");
        public static SqlDataReader ODR1;
        public static SqlDataReader ODR2;
        public static SqlCommand OCMD1 = new SqlCommand();
        public static SqlCommand OCMD2 = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["FullName"] != null || Session["CIN"] != null || Session["Phone"] != null || Session["Adresse"] != null)
            {
                Label1.Text = Session["FullName"].ToString();
                Label2.Text = Session["CIN"].ToString();
                Label3.Text = Session["Phone"].ToString();
                Label4.Text = Session["Adresse"].ToString();
                Label5.Text = "Totale Price :" + Session["totale"].ToString();
            }


            OCN1.Open();
            OCMD1.CommandText = " select * from commande where idclient =( select max(id) from client)";
            OCMD1.Connection = OCN1;
            ODR1 = OCMD1.ExecuteReader();

            DataTable ODT1 = new DataTable();
            ODT1.Load(ODR1);
            GridView1.DataSource = ODT1;
            GridView1.DataBind();
            ODR1.Close();
            OCN1.Close();
            Button1.Style.Add("margin", "6px");


        }
        public override void VerifyRenderingInServerForm(Control control)
        {
            /* Confirms that an HtmlForm control is rendered for the specified ASP.NET
               server control at run time. */
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.ContentType = "application/pdf";
            Response.AddHeader("content-disposition",
                "attachment;filename=Facture.pdf");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            StringWriter sw = new StringWriter();
            HtmlTextWriter hw = new HtmlTextWriter(sw);
            Panel1.RenderControl(hw);
            StringReader sr = new StringReader(sw.ToString());
            Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 10f, 0f);
            HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
            PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
            pdfDoc.Open();
            htmlparser.Parse(sr);
            pdfDoc.Close();
            Response.Write(pdfDoc);
            Response.End();
            //Response.Redirect("~/Chekouut-complete.aspx");
        }

    }
}