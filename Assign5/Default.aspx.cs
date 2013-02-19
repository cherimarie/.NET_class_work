using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        Login lo = new Login();
        int person = lo.UserLogin(txtUser.Text, txtPassword.Text);
        //TODO: validate these inputs
        if (person != 0)
        {
            Session["person"] = person;
            Response.Redirect("Default2.aspx");
        }
        else
        {
            lblMessage.Text = "Invalid login, sucker!";
        }
    }
}