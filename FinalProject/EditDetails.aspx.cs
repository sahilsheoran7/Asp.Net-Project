using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace FinalProject
{
    public partial class EditDetails : System.Web.UI.Page
    {
        private double hours, DAPercentvar, DARateVar, DAVar, total;
        private int GradePayVar;
        private TimeSpan dateDiff;
        private TimeSpan timeDiff;
        private int i;

        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                txtgradepay.Text = Session["gradepay"].ToString();
                DataView dv = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
                foreach (DataRowView drv in dv)
                {
                    if (drv["detail_id"].ToString() == Session["list"].ToString())
                    {
                        rdloptions.SelectedValue = drv["type"].ToString();
                        DateTime dt = Convert.ToDateTime(drv["start_date"]);
                        DateTime dt1 = Convert.ToDateTime(drv["end_date"]);
                        txtdate.Text = dt.ToShortDateString();
                        txtedate.Text = dt1.ToShortDateString();
                        txtstime.Text = drv["start_time"].ToString();
                        txtetime.Text = drv["end_time"].ToString();
                        ddlfrom.SelectedValue = drv["origin"].ToString();
                        ddlto.SelectedValue = drv["destination"].ToString();
                        ddlstay.SelectedValue = drv["stay"].ToString();
                        ddlvehicle.SelectedValue = drv["vehicle"].ToString();
                        txtdist.Text = drv["distance"].ToString();
                        txtfare.Text = drv["fare"].ToString();
                        txthours.Text = drv["hours"].ToString();
                        txtrate.Text = drv["DA_rate"].ToString();
                        txtDA.Text = drv["DA"].ToString();
                        txtpercent.Text = drv["DA_percent"].ToString();
                        txttotal.Text = drv["total"].ToString();
                        Session["userid"] = drv["user_id"].ToString();
                    }
                    else
                    {
                        lblerr.Text = "Cannot add fields";
                    }
                }
            }
        }

        protected void rdloptions_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (rdloptions.SelectedValue == "Tour")
            {
                enable();
            }
            else if (rdloptions.SelectedValue == "Office")
            {
                enable();
                ddlto.Enabled = false;

                ddlstay.Enabled = false;

                ddlvehicle.Enabled = false;

                txtdist.Enabled = false;

                txtfare.Enabled = false;

            }
            else if (rdloptions.SelectedValue == "Holiday")
            {
                enable();
                txtedate.Enabled = false;

                txtstime.Enabled = false;

                txtetime.Enabled = false;

                ddlfrom.Enabled = false;

                ddlto.Enabled = false;

                ddlstay.Enabled = false;

                ddlvehicle.Enabled = false;

                txtdist.Enabled = false;

                txtfare.Enabled = false;

            }
        }
        protected void enable()
        {
            txtdate.Enabled = true;
            txtedate.Enabled = true;
            txtstime.Enabled = true;
            txtetime.Enabled = true;
            ddlfrom.Enabled = true;
            ddlto.Enabled = true;
            ddlstay.Enabled = true;
            ddlvehicle.Enabled = true;
            txtdist.Enabled = true;
            txtfare.Enabled = true;
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            try
            {
                SqlUpdate.Update();
                lblmsg.Text = "Updated Successfully";
            }
            catch (Exception ex)
            {
                lblmsg.Text = DatabaseErrorMessage(ex.Message);
            }

        }

        private string DatabaseErrorMessage(string errorMsg)
        {
            return $"<b>A database error has occurred:</b> {errorMsg}";
        }

        protected void btncalculate_Click(object sender, EventArgs e)
        {
            GradePayVar = Convert.ToInt32(txtgradepay.Text);
            if (rdloptions.SelectedValue == "Holiday")
            {
                hours = 0;
            }
            else
            {
                dateDiff = DateTime.Parse(txtedate.Text).Subtract(DateTime.Parse(txtdate.Text));
                timeDiff = DateTime.Parse(txtetime.Text).Subtract(DateTime.Parse(txtstime.Text));
                hours = dateDiff.TotalHours + timeDiff.TotalHours;
                hours = Math.Truncate(hours);
            }



            txthours.Text = hours.ToString();

            for (i = 0; hours >= 24; i++)
            {
                hours = hours - 24;
            }

            if (hours > 0 && hours <= 6)
            {
                DAPercentvar = 0.3;
            }
            else if (hours > 6 && hours <= 12)
            {
                DAPercentvar = 0.5;
            }
            else if (hours > 12 && hours <= 24)
            {
                DAPercentvar = 1;
            }

            DAPercentvar = DAPercentvar + i;
            txtpercent.Text = DAPercentvar.ToString();

            if ((ddlto.SelectedValue == "Cambridge") || (ddlto.SelectedValue == "Guelph") || (ddlto.SelectedValue == "Toronto"))
            {
                if (ddlstay.SelectedValue == "Hotel")
                {
                    if (GradePayVar == 8900)
                    {
                        DARateVar = 1000;
                    }
                    else if (GradePayVar == 6600)
                    {
                        DARateVar = 750;
                    }
                    else if (GradePayVar == 4400)
                    {
                        DARateVar = 575;
                    }
                    else if (GradePayVar == 4200)
                    {
                        DARateVar = 300;
                    }
                }
                else if (ddlstay.SelectedValue == "Without Hotel")
                {
                    if (GradePayVar == 8900)
                    {
                        DARateVar = 325;
                    }
                    else if (GradePayVar == 6600)
                    {
                        DARateVar = 290;
                    }
                    else if (GradePayVar == 4400)
                    {
                        DARateVar = 225;
                    }
                    else if (GradePayVar == 4200)
                    {
                        DARateVar = 160;
                    }
                }
            }

            if ((ddlto.SelectedValue == "Kitchener") || (ddlto.SelectedValue == "Waterloo") || (ddlto.SelectedValue == "Scarborough"))
            {
                if (ddlstay.SelectedValue == "Hotel")
                {
                    if (GradePayVar == 8900)
                    {
                        DARateVar = 800;
                    }
                    else if (GradePayVar == 6600)
                    {
                        DARateVar = 600;
                    }
                    else if (GradePayVar == 4400)
                    {
                        DARateVar = 450;
                    }
                    else if (GradePayVar == 4200)
                    {
                        DARateVar = 225;
                    }
                }
                else if (ddlstay.SelectedValue == "Without Hotel")
                {
                    if (GradePayVar == 8900)
                    {
                        DARateVar = 200;
                    }
                    else if (GradePayVar == 6600)
                    {
                        DARateVar = 180;
                    }
                    else if (GradePayVar == 4400)
                    {
                        DARateVar = 150;
                    }
                    else if (GradePayVar == 4200)
                    {
                        DARateVar = 125;
                    }
                }

            }

            if ((ddlto.SelectedValue == "Montreal") || (ddlto.SelectedValue == "NorthBay") || (ddlto.SelectedValue == "ThunderBay"))
            {
                if (ddlstay.SelectedValue == "Hotel")
                {
                    if (GradePayVar == 8900)
                    {
                        DARateVar = 650;
                    }
                    else if (GradePayVar == 6600)
                    {
                        DARateVar = 500;
                    }
                    else if (GradePayVar == 4400)
                    {
                        DARateVar = 375;
                    }
                    else if (GradePayVar == 4200)
                    {
                        DARateVar = 225;
                    }
                }
                else if (ddlstay.SelectedValue == "Without Hotel")
                {
                    if (GradePayVar == 8900)
                    {
                        DARateVar = 160;
                    }
                    else if (GradePayVar == 6600)
                    {
                        DARateVar = 140;
                    }
                    else if (GradePayVar == 4400)
                    {
                        DARateVar = 140;
                    }
                    else if (GradePayVar == 4200)
                    {
                        DARateVar = 130;
                    }
                }
            }


            if ((rdloptions.SelectedValue == "Office") || (rdloptions.SelectedValue == "Holiday"))
            {
                DARateVar = 0;

            }


            txtrate.Text = DARateVar.ToString();
            DAVar = DARateVar * DAPercentvar;
            txtDA.Text = DAVar.ToString();

            if ((rdloptions.SelectedValue == "Office") || (rdloptions.SelectedValue == "Holiday"))
            {

                txttotal.Text = "0";
            }
            else
            {
                total = DAVar + double.Parse(txtfare.Text);
                txttotal.Text = total.ToString();
            }
        }
    }
}