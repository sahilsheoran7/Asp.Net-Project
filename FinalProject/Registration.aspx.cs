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
        bool exists = false;
        bool flag = false;
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.Form.DefaultFocus = FindControl("txtlname").ClientID;
        }

        protected void btnsign_Click(object sender, EventArgs e)
        {
           

            if (IsValid)
            {
                DataView dv = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
                        foreach(DataRowView drv in dv)
                {
                    if(drv["username"].ToString() == txtuname.Text)
                    {
                        exists = true;
                    }
                }
                if (exists)
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
                        ddlsalutation.SelectedIndex = 0;
                        txtfirstname.Text = "";
                        txtlastname.Text = "";
                        txtphone.Text = "";
                        txtdesig.Text = "";
                        ddlgrade.SelectedIndex = -1;
                        txtoffice.Text = "";
                        txthead.Text = "";
                        txtuname.Text = "";
                        txtpass.Text = "";
                    }
                    catch (Exception ex)
                    {
                        lblError.Text = DatabaseErrorMessage(ex.Message);
                    }
                }  
            }
            

            //string script = @"<script language=""javascript""> alert('Inserted Successfully.'); </script>;";
            //Page.ClientScript.RegisterStartupScript(this.GetType(), "myJScript1", script);
        }
        protected void btnsub_Click(object sender, EventArgs e)
        {
            Session["Username"] = txtLname.Text;
            DataView dv = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            foreach(DataRowView drv in dv)
            {
                if((drv["username"].ToString() == txtLname.Text) && (drv["password"].ToString() == txtLpswd.Text))
                {
                    flag = true;
                }
                
            }
            if (flag)
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