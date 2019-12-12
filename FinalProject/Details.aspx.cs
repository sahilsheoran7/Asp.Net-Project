using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
namespace FinalProject
{
    public partial class Details : System.Web.UI.Page
    { 
        protected void Page_Load(object sender, EventArgs e)
        {
            DisplayDetails();
        }

        private void DisplayDetails()
        {
            Insert ins = (Insert)Session["Insert"];
            lblrtype.Text = ins.type;
            lblrsdate.Text = ins.start_date;
            lblredate.Text = ins.end_date;
            lblrstime.Text = ins.start_time;
            lblretime.Text = ins.end_time;
            lblrorigin.Text = ins.origin;
            lblrdest.Text = ins.destination;
            lblrstay.Text = ins.stay;
            lblrveh.Text = ins.vehicle;
            lblrdist.Text = ins.distance;
            lblrfare.Text = ins.fare;
            lblrhours.Text = ins.hours;
            lblrrate.Text = ins.DA_rate;
            lblrDA.Text = ins.DA;
            lblrpercent.Text = ins.DA_percent;
            lblrtotal.Text = ins.total;
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                var parameters = SqlDataSource1.InsertParameters;
                parameters["user_id"].DefaultValue = Session["userid"].ToString();
                parameters["type"].DefaultValue = lblrtype.Text;
                parameters["start_date"].DefaultValue = lblrsdate.Text;
                parameters["end_date"].DefaultValue = lblredate.Text;
                parameters["start_time"].DefaultValue = lblrstime.Text;
                parameters["end_time"].DefaultValue = lblretime.Text;
                parameters["origin"].DefaultValue = lblrorigin.Text;
                parameters["destination"].DefaultValue = lblrdest.Text;
                parameters["stay"].DefaultValue = lblrstay.Text;
                parameters["vehicle"].DefaultValue = lblrveh.Text;
                parameters["distance"].DefaultValue = lblrdist.Text;
                parameters["fare"].DefaultValue = lblrfare.Text;
                parameters["hours"].DefaultValue = lblrhours.Text;
                parameters["DA_rate"].DefaultValue = lblrrate.Text;
                parameters["DA"].DefaultValue = lblrDA.Text;
                parameters["DA_percent"].DefaultValue = lblrpercent.Text;
                parameters["total"].DefaultValue = lblrtotal.Text;
                Session.Remove("Insert");
                try
                {
                    SqlDataSource1.Insert();
                    Response.Redirect("~/Booking.aspx");
                    
                }
                catch (Exception ex)
                {
                    lblmsg.Text = DatabaseErrorMessage(ex.Message);
                }
            }
        }

        private string DatabaseErrorMessage(string errorMsg)
        {
            return $"<b>A database error has occurred:</b> {errorMsg}";
        }
    }
}