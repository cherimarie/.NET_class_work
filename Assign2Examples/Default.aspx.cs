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
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        //instantiate the Donor object
        Donor d = new Donor();
        //assign the values from the text fields to the poperties
        d.FirstName = txtFirstName.Text;
        d.LastName = txtLastName.Text;
        d.Address = txtAddress.Text;
        d.City = txtCity.Text;
        d.State = txtState.Text;
        d.Zip = txtZip.Text;
        d.Phone = txtPhone.Text;
        d.Email = txtEmail.Text;
        d.DonationAmount = double.Parse(txtDonationAmount.Text);

        //save the object to a session variable
        Session["NewDonor"] = d;

        //Redirect to the next page
        Response.Redirect("Default2.aspx");

    }
}