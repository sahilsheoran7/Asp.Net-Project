using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
namespace FinalProject
{
    public partial class InsertData : System.Web.UI.Page
    {
        Insert ins;
        private double hours,DAPercentvar,DARateVar,DAVar,total;
        private int GradePayVar;
        private TimeSpan dateDiff;
        private TimeSpan timeDiff;
        private int i;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {
                if (Session["Insert"] != null)
                {
                    DisplayDetails();
                }
                else
                {
                    txtgradepay.Text = Convert.ToString(Session["gradepay"]);
                }
            }
        }

        private void DisplayDetails()
        {
            Insert ins = (Insert)Session["Insert"];
            rdloptions.SelectedValue = ins.type;
            txtdate.Text = ins.start_date;
            txtedate.Text = ins.end_date;
            txtstime.Text = ins.start_time;
            txtetime.Text = ins.end_time;
            ddlfrom.SelectedValue = ins.origin;
            ddlto.SelectedValue = ins.destination;
            ddlstay.SelectedValue = ins.stay;
            ddlvehicle.SelectedValue = ins.vehicle;
            txtdist.Text = ins.distance;
            txtfare.Text = ins.fare;
            txthours.Text = ins.hours;
            txtrate.Text = ins.DA_rate;
            txtDA.Text = ins.DA;
            txtpercent.Text = ins.DA_percent;
            txttotal.Text = ins.total;
            txtgradepay.Text = Session["gradepay"].ToString();
        }
        protected void btnnext_Click(object sender, EventArgs e)
        {
            ins = new Insert();
            ins.user_id = Session["userid"].ToString();
            ins.type = rdloptions.SelectedValue;
            ins.start_date = txtdate.Text;
            ins.end_date = txtedate.Text;
            ins.start_time = txtstime.Text;
            ins.end_time = txtetime.Text;
            if(ddlfrom.SelectedValue == "Select")
            {
                ins.origin = null;
            }
            else
            {
                ins.origin = ddlfrom.SelectedValue;
            }
            if (ddlto.SelectedValue == "Select")
            {
                ins.destination = null;
            }
            else
            {
                ins.destination = ddlto.SelectedValue;
            }
            if (ddlstay.SelectedValue == "Select")
            {
                ins.stay = null;
            }
            else
            {
                ins.stay = ddlstay.SelectedValue; ;
            }
            if (ddlvehicle.SelectedValue == "Select")
            {
                ins.vehicle = null;
            }
            else
            {
                ins.vehicle = ddlvehicle.SelectedValue;
            }
            ins.distance = txtdist.Text;
            ins.fare = txtfare.Text;
            ins.hours = txthours.Text;
            ins.DA_rate = txtrate.Text;
            ins.DA = txtDA.Text;
            ins.DA_percent = txtpercent.Text;
            ins.total = txttotal.Text;

            Session["Insert"] = ins;
            Response.Redirect("~/Details.aspx");
        }

        protected void rdloptions_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(rdloptions.SelectedValue == "Tour")
            {
                enable();
            }
            else if(rdloptions.SelectedValue == "Office")
            {
                enable();
                ddlto.Enabled = false;
                ddlstay.Enabled = false;
                ddlvehicle.Enabled = false;
                txtdist.Enabled = false;
                txtfare.Enabled = false;
            }
            else if(rdloptions.SelectedValue == "Holiday")
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
        protected void disable()
        {
            txtdate.Enabled = false;
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

            if ((ddlto.SelectedValue =="Kitchener") || (ddlto.SelectedValue == "Waterloo") || (ddlto.SelectedValue == "Scarborough"))
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