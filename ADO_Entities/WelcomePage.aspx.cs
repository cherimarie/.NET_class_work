using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WelcomePage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        AutomartEntities ae = new AutomartEntities();
        var serv = from s in ae.AutoServices
                   orderby s.ServiceName
                   select new {s.ServiceName, s.ServicePrice};
        DataList1.DataSource = serv.ToList();
        DataList1.DataBind();

        var loc = from l in ae.Locations
                  orderby l.LocationName
                  select new { l.LocationName, l.LocationAddress, l.LocationCity, l.LocationState };
        DataList2.DataSource = loc.ToList();
        DataList2.DataBind(); 
    }

    protected void btnSignUp_Click(object sender, EventArgs e)
    {
        Response.Redirect("NewCustomerPage.aspx");
    }
}