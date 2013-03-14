using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["person"] != null)
        {
            int pK = (int)Session["person"];
            CustomerName cn = new CustomerName(pK);
            lblName.Text = cn.CustomerNameFetch();
        }
        else
        {
            Response.Redirect("Default.aspx");
        }
    }
}