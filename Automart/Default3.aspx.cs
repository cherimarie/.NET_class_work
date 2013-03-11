using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string fName = Request.QueryString["name"];
        string bDay = Request.QueryString["bDay"];
        lblMessage.Text = "Thank you, " + fName + " and I hope you have a delightful birthday on " + bDay; 
    }
}