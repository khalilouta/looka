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
    public partial class WebForm15 : System.Web.UI.Page
    {
        public static SqlConnection OCN1 = new SqlConnection(@"Data source = DESKTOP-R5K6EHP\SQLEXPRESS ; Initial Catalog = pfe2021 ; Integrated Security = true;");
        public static SqlDataReader ODR1;
        public static SqlCommand OCMD1 = new SqlCommand();
        public static SqlCommand OCMD2 = new SqlCommand();
        public static SqlDataAdapter ODA1 = new SqlDataAdapter();
        public static DataSet ODS1 = new DataSet();
        public static SqlCommandBuilder BC;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                OCN1.Open();
                OCMD2.CommandText = "select idblog from blog";
                OCMD2.Connection = OCN1;
                ODR1 = OCMD2.ExecuteReader();
                DropDownList1.DataSource = ODR1;
                //ODA1 = new SqlDataAdapter("select * from blog", OCN1);
                //ODA1.Fill(ODS1, "blg");
                //DropDownList1.DataSource = ODS1.Tables["blg"];
                DropDownList1.DataTextField = "idblog";
                DropDownList1.DataValueField = "idblog";

                DropDownList1.DataBind();
                OCN1.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand OCMD13 = new SqlCommand();
            HttpPostedFile PSF1 = FileUpload1.PostedFile;
            string FName = Path.GetFileName(PSF1.FileName);
            string Fextn = Path.GetExtension(FName);
            Stream str = PSF1.InputStream;
            BinaryReader BR1 = new BinaryReader(str);
            Byte[] bite = BR1.ReadBytes((int)str.Length);
            OCN1.Open();
            OCMD13.CommandType = CommandType.StoredProcedure;
            OCMD13.Connection = OCN1;
            OCMD13.CommandText = "AdddBlog ";
            SqlParameter P1 = new SqlParameter()
            {
                ParameterName = "@imgblog",
                Value = bite
            };
            OCMD13.Parameters.Add(P1);

            SqlParameter P2 = new SqlParameter()
            {
                ParameterName = "@title",
                Value = TextBox2.Text
            };
            OCMD13.Parameters.Add(P2);

            SqlParameter P3 = new SqlParameter()
            {
                ParameterName = "@descriptions",
                Value = TextBox3.Text
            };
            OCMD13.Parameters.Add(P3);
            OCMD13.ExecuteNonQuery();
            OCN1.Close();


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlCommand OCMD12 = new SqlCommand();

            HttpPostedFile PSF1 = FileUpload1.PostedFile;
            string FName = Path.GetFileName(PSF1.FileName);
            string Fextn = Path.GetExtension(FName);
            Stream str = PSF1.InputStream;
            BinaryReader BR1 = new BinaryReader(str);
            Byte[] bite = BR1.ReadBytes((int)str.Length);
            OCN1.Open();
            OCMD12.CommandType = CommandType.StoredProcedure;
            OCMD12.Connection = OCN1;
            OCMD12.CommandText = "Updateblog";

            SqlParameter P1 = new SqlParameter()
            {
                ParameterName = "@imgblog",
                Value = bite
            };
            OCMD12.Parameters.Add(P1);

            SqlParameter P2 = new SqlParameter()
            {
                ParameterName = "@title",
                Value = TextBox2.Text
            };
            OCMD12.Parameters.Add(P2);

            SqlParameter P3 = new SqlParameter()
            {
                ParameterName = "@descriptions",
                Value = TextBox3.Text
            };
            OCMD12.Parameters.Add(P3);
            SqlParameter P4 = new SqlParameter()
            {
                ParameterName = "@idblog",
                Value = DropDownList1.SelectedValue
            };
            OCMD12.Parameters.Add(P4);
            OCMD12.ExecuteNonQuery();
            OCN1.Close();

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlCommand OCMD11 = new SqlCommand();

            //HttpPostedFile PSF1 = FileUpload1.PostedFile;
            //string FName = Path.GetFileName(PSF1.FileName);
            //string Fextn = Path.GetExtension(FName);
            //Stream str = PSF1.InputStream;
            //BinaryReader BR1 = new BinaryReader(str);
            //Byte[] bite = BR1.ReadBytes((int)str.Length);
            OCN1.Open();
            OCMD11.CommandType = CommandType.StoredProcedure;
            OCMD11.Connection = OCN1;
            OCMD11.CommandText = "Deleteblog";

            SqlParameter P1 = new SqlParameter()
            {
                ParameterName = "@idblog",
                Value = DropDownList1.SelectedValue
            };
            OCMD11.Parameters.Add(P1);
            OCMD11.ExecuteNonQuery();
            OCN1.Close();


        }
    }
}