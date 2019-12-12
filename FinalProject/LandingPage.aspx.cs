using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
namespace FinalProject
{
    public partial class LandingPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtLname.Focus();
        }

        protected void btnsign_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                DataView dv = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
                dv.RowFilter = "username = '" + txtuname.Text + "'";
                if (dv.Count > 0)
                {
                    lblError.Text = "Username is already existing choose new username";
                }
                else
                {
                    var parameters = SqlDataSource1.InsertParameters;
                    parameters["salutation"].DefaultValue = ddlsalutation.SelectedValue;
                    parameters["first_name"].DefaultValue = txtfirstname.Text;
                    parameters["last_name"].DefaultValue = txtlastname.Text;
                    parameters["phone"].DefaultValue = txtphone.Text;
                    parameters["designation"].DefaultValue = txtdesig.Text;
                    parameters["gradepay"].DefaultValue = ddlgrade.SelectedValue;
                    parameters["office"].DefaultValue = txtoffice.Text;
                    parameters["headquarter"].DefaultValue = txtuname.Text;
                    parameters["username"].DefaultValue = txtuname.Text;
                    parameters["password"].DefaultValue = txtpass.Text;

                    try
                    {
                        SqlDataSource1.Insert();
                        Session["Username"] = txtuname.Text;
                        Response.Redirect("~/home.aspx");
                    }
                    catch (Exception ex)
                    {
                        lblError.Text = DatabaseErrorMessage(ex.Message);
                    }
                }
            }
        }

        protected void btnsub_Click(object sender, EventArgs e)
        {
            Session["Username"] = txtLname.Text;
            DataView dv = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            dv.RowFilter = "username = '" + txtLname.Text + "' AND password = '" + txtLpswd.Text + "'";
            if (dv.Count > 0)
            {
                Response.Redirect("~/home.aspx");
            }
            else
            {
                lbllogin.Text = "Invalid Username or Password";
            }
        }

        private string DatabaseErrorMessage(string errorMsg)
        {
            return $"<b>A database error has occurred:</b> {errorMsg}";
        }

    }
}