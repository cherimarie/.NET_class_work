using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class NewCustomerPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void txtSubmit_Click(object sender, EventArgs e)
    {
    int isErrors=Validator();
        if (isErrors == 0)
        {
            try
            {
                AutomartEntities ae = new AutomartEntities();

                Person p = new Person();
                 p.LastName = txtLastName.Text;
                 p.FirstName = txtFirstName.Text;
                 ae.People.Add(p);

                RegisteredCustomer rc = new RegisteredCustomer();
                rc.Person = p;
                rc.Email = txtEmail.Text;
                rc.CustomerPassword = txtConfirmPassword.Text;
                ae.RegisteredCustomers.Add(rc);

                vehicle v = new vehicle();
                v.Person = p;
                v.LicenseNumber = txtLicense.Text;
                v.VehicleMake = txtMake.Text;
                v.VehicleYear = txtYear.Text;
                ae.vehicles.Add(v); 

                ae.SaveChanges();

                Response.Redirect("ConfirmationPage.aspx");
               }
               catch (ArgumentNullException en)
              {
                string msg = en.Message;
                CreateAlert(msg);
               }
              catch (Exception ex)
              {

                string msg = ex.Message;
                CreateAlert(msg);
            }
        }//end if
  }



    private int Validator()
    {
        int errors = 0;
        string msg;

        if (txtLastName.Text.Equals(""))
        {
            msg = "Last name is required";
            CreateAlert(msg);
            errors = 1;

        }
        if (txtFirstName.Text.Equals(""))
        {
            msg = "First name is required";
            CreateAlert(msg);
            errors = 1;

        }
        if (txtEmail.Text.Equals(""))
        {
            msg = "Email is required";
            CreateAlert(msg);
            errors = 1;

        }
        if (txtLicense.Text.Equals(""))
        {
            msg = "License plate number is required";
            CreateAlert(msg);
            errors = 1;

        }
        if (txtPassword.Text.Equals(""))
        {
            msg = "Password is required";
            CreateAlert(msg);
            errors = 1;

        }
        if (txtConfirmPassword.Text.Equals(""))
        {
            msg = "Confirmation of password is required";
            CreateAlert(msg);
            errors = 1;

        }

    

        if (txtPassword.Text != txtConfirmPassword.Text)
        {
            msg = "Please make sure your password is correct";
            CreateAlert(msg);
            errors = 1;
        }

        return errors;
    }

    private void CreateAlert(string msg)
    {
        Response.Write("<script type='text/JavaScript'>alert('" + msg + "')</script>");
    }
}