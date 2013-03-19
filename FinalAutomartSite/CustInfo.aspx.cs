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
            int vhId = 0;
            CustomerName cn = new CustomerName(pK);
            lblName.Text = cn.CustomerNameFetch();

            CustomerHistory ch = new CustomerHistory(pK);
            lblYear.Text = ch.VehicleYearFetch();
            lblMake.Text = ch.VehicleMakeFetch();
            vhId = ch.VehicleIdFetch();

     
            AutomartEntities ae = new AutomartEntities();
            var servdate = from s in ae.VehicleServiceDetails
                          where s.VehicleService.VehicleID == vhId 
                          orderby s.VehicleService.ServiceDate
                          select new {s.VehicleService.ServiceDate,               
                                      s.AutoService.ServiceName, 
                                      s.AutoService.ServicePrice };
                dlHistory.DataSource = servdate.ToList();
                dlHistory.DataBind();

              
   


        }
        else
        {
            Response.Redirect("Login.aspx");
        }
    }
}