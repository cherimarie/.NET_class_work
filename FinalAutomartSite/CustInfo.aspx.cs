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
        if (Session["person"] != null)
        {
            int pK = (int)Session["person"];
            CustomerName cn = new CustomerName(pK);
            lblName.Text = cn.CustomerNameFetch();

            CustomerHistory ch = new CustomerHistory(pK);
            lblYear.Text = ch.VehicleYearFetch();
            lblMake.Text = ch.VehicleMakeFetch();

            {
                AutomartEntities ae = new AutomartEntities();
                var serv = from s in ae.AutoServices
                           orderby s.ServiceName
                           select new { s.ServiceName, s.ServicePrice };
                dlHistory.DataSource = serv.ToList();
                dlHistory.DataBind();

                var loc = from l in ae.Locations
                          orderby l.LocationName
                          select new { l.LocationName, l.LocationAddress, l.LocationCity, l.LocationState };
                dlHistory.DataSource = loc.ToList();
                dlHistory.DataBind();
            }


        }
        else
        {
            Response.Redirect("Login.aspx");
        }
    }
}