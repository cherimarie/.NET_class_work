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
        string lastName = Request.QueryString["name"];
        string donation = Request.QueryString["amount"];
        Label1.Text = "thank you, Captain " + lastName + " for your donation of "
            + donation + ".";
    }
}