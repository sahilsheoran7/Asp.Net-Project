using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
namespace FinalProject
{
    public partial class home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(Session["Username"] as string))
            {
                DataView dv = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
                dv.RowFilter = "username = '" + Session["Username"].ToString() + "'";

                DataRowView row = dv[0];
                Session["gradepay"] = row["gradepay"].ToString();
                Session["userid"] = row["user_id"].ToString();
            }
            else
            {
                Response.RedirectPermanent("~/LandingPage.aspx");
            }
        }
    }
}