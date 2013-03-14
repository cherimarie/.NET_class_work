using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AutomartModel;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        Login lo = new Login();
        int person = lo.UserLogin(txtUser.Text, txtPassword.Text);

        if (person != 0)
        {
            Session["person"] = person;
            Response.Redirect("CustInfo.aspx");
        }
        else
        {
            lblMessage.Text = "Invalid login, sucker!";
        }
    }
}