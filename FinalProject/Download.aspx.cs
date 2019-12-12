using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using ClosedXML.Excel;
using System.Configuration;
using System.Data.SqlClient;

namespace FinalProject
{
    public partial class Download : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btndownload_Click(object sender, EventArgs e)
        {
            string constr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            using(SqlConnection con = new SqlConnection(constr))
            {
                using(SqlCommand cmd = new SqlCommand("SELECT detail_id AS ID,type AS Travel_Type,start_date AS Begin_Date,end_date AS End_Date,origin AS Origin,destination AS Destination,stay AS Stay,vehicle AS Transport,distance AS Distance,fare AS Fare,hours AS Total_Hours,DA_rate AS Dearness_Allowance_Rate,DA AS Dearness_Allowance,DA_percent AS DA_Percent ,total AS Total_Amount_Elligible  FROM Details WHERE user_id = '" + Session["userid"] + "'"))
                {
                    using(SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            using (XLWorkbook wb = new XLWorkbook())
                            {
                                wb.Worksheets.Add(dt, "Details");
                                Response.Clear();
                                Response.Buffer = true;
                                Response.Charset = "";
                                Response.ContentType = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet";
                                Response.AddHeader("content-disposition", "attachment;filename=YourTA.xlsx");
                                using (MemoryStream MyMemoryStream = new MemoryStream())
                                {
                                    wb.SaveAs(MyMemoryStream);
                                    MyMemoryStream.WriteTo(Response.OutputStream);
                                    Response.Flush();
                                    Response.End();
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}