using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
namespace FinalProject
{
    public partial class EditData : System.Web.UI.Page
    {
        DataView dv;
        Edit edit;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                dv = (DataView)SqlDataSource2.Select(DataSourceSelectArguments.Empty);
                lblcount.Text = Convert.ToString(dv.Count);
            }
           
        }

        protected void btnget_Click(object sender, EventArgs e)
        {
            dv = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            if(dv.Count > 0)
            {
                lstcustomers.Items.Clear();
                lstcustomers.Items.Add(new ListItem("-- Select one you want to Edit --"));
                DataRowView drv = (DataRowView)dv[0];
                edit = new Edit();
                foreach(DataRowView row in dv)
                {
                    edit.detail_id = row["detail_id"].ToString();
                    edit.user_id = row["user_id"].ToString();
                    edit.type = row["type"].ToString();
                    edit.start_date = row["start_date"].ToString();
                    edit.end_date = row["end_date"].ToString();
                    edit.start_time = row["start_time"].ToString();
                    edit.end_time = row["end_time"].ToString();
                    edit.origin = row["origin"].ToString();
                    edit.destination = row["destination"].ToString();
                    edit.stay = row["stay"].ToString();
                    edit.vehicle = row["vehicle"].ToString();
                    edit.distance = row["distance"].ToString();
                    edit.fare = row["fare"].ToString();
                    edit.hours = row["hours"].ToString();
                    edit.DA_rate = row["DA_rate"].ToString();
                    edit.DA = row["DA"].ToString();
                    edit.DA_percent = row["DA_percent"].ToString();
                    edit.total = row["total"].ToString();
                    lstcustomers.Items.Add(new ListItem(edit.detaildisplay(), edit.detail_id.ToString()));
                }

            }
            else
            {
                lstcustomers.Items.Clear();
                lblmessage.Text = "No Records Found";
            }
        }

        protected void btnnxt_Click(object sender, EventArgs e)
        {
            Session["list"] = lstcustomers.SelectedValue;
            Response.Redirect("~/EditDetails.aspx");
        }
    }
}