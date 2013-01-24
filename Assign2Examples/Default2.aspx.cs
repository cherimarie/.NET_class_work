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
        if (Session["NewDonor"] != null)
        {
            Donor d = (Donor)Session["NewDonor"];
            txtFirstName.Text = d.FirstName;
            txtLastName.Text = d.LastName;
            txtAddress.Text = d.Address;
            txtCity.Text = d.City;
            txtState.Text = d.State;
            txtZip.Text = d.Zip;
            txtPhone.Text = d.Phone;
            txtEmail.Text = d.Email;
            txtDonationAmount.Text = d.DonationAmount.ToString();
        }
        else
        {
            Response.Redirect("Default.aspx");
        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string lName = txtLastName.Text;
        string amount = txtDonationAmount.Text;
        Response.Redirect("Default3.aspx?name=" +
            lName + "&amount=" + amount);
    }
}