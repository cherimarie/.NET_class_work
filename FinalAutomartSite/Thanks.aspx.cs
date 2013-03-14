using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AutomartModel;


public partial class _Default : System.Web.UI.Page
{
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
}