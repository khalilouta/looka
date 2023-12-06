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
    public partial class WebForm14 : System.Web.UI.Page
    {
        public static SqlConnection OCN1 = new SqlConnection(@"Data source = DESKTOP-R5K6EHP\SQLEXPRESS ; Initial Catalog = pfe2021 ; Integrated Security = true;");
        public static SqlDataReader ODR1;
        public static SqlCommand OCMD1 = new SqlCommand();
        public static SqlDataAdapter ODA1 = new SqlDataAdapter();
        public static DataSet ODS1 = new DataSet();
        public static DataSet ODS2 = new DataSet();
        public static SqlCommandBuilder BC;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                OCN1.Open();
                ODA1 = new SqlDataAdapter("select * from Categorie", OCN1);
                ODA1.Fill(ODS1, "cat");
                DropDownList1.DataSource = ODS1.Tables["cat"];
                DropDownList1.DataTextField = "IDCat";
                DropDownList1.DataValueField = "IDCat";

                DropDownList1.DataBind();
                OCN1.Close();
            }

            if (!IsPostBack)
            {
                SqlDataAdapter ODA = new SqlDataAdapter("select * from Product ", OCN1);
                ODA.Fill(ODS2, "Product");
                GridView1.DataSource = ODS2.Tables["Product"];
                //OCN1.Open();
                //OCMD1.CommandText = "select * from Product";
                //OCMD1.Connection = OCN1;
                //ODR1 = OCMD1.ExecuteReader();

                //DataTable ODT1 = new DataTable();
                //ODT1.Load(ODR1);
                //GridView1.DataSource = ODT1;
                GridView1.DataBind();
                //ODR1.Close();
                //OCN1.Close();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            HttpPostedFile postedfile = FileUpload1.PostedFile;
            string fileName = Path.GetFileName(postedfile.FileName);
            string fileextension = Path.GetExtension(fileName);
            if (fileextension.ToLower() == ".jpg" || fileextension.ToLower() == ".png")
            {
                Stream STR1 = postedfile.InputStream;
                BinaryReader BN1 = new BinaryReader(STR1);
                Byte[] bite = BN1.ReadBytes((int)STR1.Length);
                OCN1.Open();
                SqlCommand OCMD1 = new SqlCommand("Addproduct", OCN1);
                OCMD1.CommandType = CommandType.StoredProcedure;
                SqlParameter PID = new SqlParameter()
                {
                    ParameterName = "@IDP",
                    Value = TextBox1.Text

                };
                OCMD1.Parameters.Add(PID);

                SqlParameter PName = new SqlParameter()
                {
                    ParameterName = "@PName",
                    Value = TextBox2.Text

                };
                OCMD1.Parameters.Add(PName);

                SqlParameter Prix = new SqlParameter()
                {
                    ParameterName = "@prix",
                    Value = TextBox3.Text

                };
                OCMD1.Parameters.Add(Prix);

                SqlParameter Description = new SqlParameter()
                {
                    ParameterName = "@Discription",
                    Value = TextBox4.Text

                };
                OCMD1.Parameters.Add(Description);

                SqlParameter Delivery = new SqlParameter()
                {
                    ParameterName = "@Delivery",
                    Value = TextBox5.Text

                };
                OCMD1.Parameters.Add(Delivery);

                SqlParameter img = new SqlParameter()
                {
                    ParameterName = "@img",
                    Value = bite

                };
                OCMD1.Parameters.Add(img);

                SqlParameter Categorie = new SqlParameter()
                {
                    ParameterName = "@categorie",
                    Value = DropDownList1.SelectedValue

                };
                OCMD1.Parameters.Add(Categorie);
                OCMD1.ExecuteNonQuery();
                OCN1.Close();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            HttpPostedFile postedfile = FileUpload1.PostedFile;
            string fileName = Path.GetFileName(postedfile.FileName);
            string fileextension = Path.GetExtension(fileName);
            if (fileextension.ToLower() == ".jpg" || fileextension.ToLower() == ".png")
            {
                Stream STR1 = postedfile.InputStream;
                BinaryReader BN1 = new BinaryReader(STR1);
                Byte[] bite = BN1.ReadBytes((int)STR1.Length);
                OCN1.Open();
                SqlCommand OCMD1 = new SqlCommand("updatepoduct", OCN1);
                OCMD1.CommandType = CommandType.StoredProcedure;
                SqlParameter PID = new SqlParameter()
                {
                    ParameterName = "@IDP",
                    Value = TextBox1.Text

                };
                OCMD1.Parameters.Add(PID);

                SqlParameter PName = new SqlParameter()
                {
                    ParameterName = "@PName",
                    Value = TextBox2.Text

                };
                OCMD1.Parameters.Add(PName);

                SqlParameter Prix = new SqlParameter()
                {
                    ParameterName = "@prix",
                    Value = TextBox3.Text

                };
                OCMD1.Parameters.Add(Prix);

                SqlParameter Description = new SqlParameter()
                {
                    ParameterName = "@Discription",
                    Value = TextBox4.Text

                };
                OCMD1.Parameters.Add(Description);

                SqlParameter Delivery = new SqlParameter()
                {
                    ParameterName = "@Delivery",
                    Value = TextBox5.Text

                };
                OCMD1.Parameters.Add(Delivery);

                SqlParameter img = new SqlParameter()
                {
                    ParameterName = "@img",
                    Value = bite

                };
                OCMD1.Parameters.Add(img);

                SqlParameter Categorie = new SqlParameter()
                {
                    ParameterName = "@categorie",
                    Value = DropDownList1.SelectedValue

                };
                OCMD1.Parameters.Add(Categorie);
                OCMD1.ExecuteNonQuery();
                OCN1.Close();

            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {


            OCN1.Open();
            SqlCommand OCMD1 = new SqlCommand("Deleteproduct", OCN1);
            OCMD1.CommandType = CommandType.StoredProcedure;
            SqlParameter PID = new SqlParameter()
            {
                ParameterName = "@IDP",
                Value = TextBox1.Text

            };
            OCMD1.Parameters.Add(PID);

            //SqlParameter PName = new SqlParameter()
            //{
            //    ParameterName = "@PName",
            //    Value = TextBox2.Text

            //};
            //OCMD1.Parameters.Add(PName);

            //SqlParameter Prix = new SqlParameter()
            //{
            //    ParameterName = "@prix",
            //    Value = TextBox3.Text

            //};
            //OCMD1.Parameters.Add(Prix);

            //SqlParameter Description = new SqlParameter()
            //{
            //    ParameterName = "@Discription",
            //    Value = TextBox4.Text

            //};
            //OCMD1.Parameters.Add(Description);

            //SqlParameter Delivery = new SqlParameter()
            //{
            //    ParameterName = "@Delivery",
            //    Value = TextBox5.Text

            //};
            //OCMD1.Parameters.Add(Delivery);

            //SqlParameter img = new SqlParameter()
            //{
            //    ParameterName = "@img",
            //    Value = bite

            //};
            //OCMD1.Parameters.Add(img);

            //SqlParameter Categorie = new SqlParameter()
            //{
            //    ParameterName = "@categorie",
            //    Value = DropDownList1.SelectedValue

            //};
            //OCMD1.Parameters.Add(Categorie);
            OCMD1.ExecuteNonQuery();
            OCN1.Close();

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            ODS2.WriteXml(Server.MapPath("ODS2.Xml"));
            Label1.Text = "Ximilisation Reussi ";
        }
    }
}

