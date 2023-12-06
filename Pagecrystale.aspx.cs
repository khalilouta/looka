using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;

namespace Projet_De_Fin_Detude
{
    public partial class WebForm21 : System.Web.UI.Page
    {

        public static SqlConnection OCN1 = new SqlConnection(@"Data source = DESKTOP-R5K6EHP\SQLEXPRESS ; Initial Catalog = pfe2021 ; Integrated Security = true;");
        public static SqlDataReader ODR1;
        public static SqlCommand CMD1 = new SqlCommand();
        public static SqlDataAdapter ODA1 = new SqlDataAdapter();
        public static DataSet ODS1 = new DataSet();
        public static SqlCommandBuilder BC;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            CMD1.Connection = OCN1;
            CMD1.CommandText = "select * from Product";

            SqlDataAdapter DAA = new SqlDataAdapter(CMD1);
            DataSet DDS = new DataSet();
            DAA.Fill(DDS);
            ReportDocument RPT = new ReportDocument();
            RPT.Load(Server.MapPath("~/CrystalReport1.rpt"));
            RPT.SetDataSource(DDS.Tables["table"]);
            CrystalReportViewer1.ReportSource = RPT;
            RPT.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "Product2 Information");
        }
    }
}