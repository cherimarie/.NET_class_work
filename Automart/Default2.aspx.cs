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
        if (Session["NewUser"] != null)
        {
            SiteUser s = (SiteUser)Session["NewUser"];
            txtFirstName.Text = s.FirstName;
            txtLastName.Text = s.LastName;
            txtEmail.Text = s.Email;
            txtBirthday.Text = s.BirthDay.ToString();
        }
        else
        {
            Response.Redirect("Default.aspx"); 
        }

    }
        public void ConfBtnClick(object sender, EventArgs e)
        {
            string fName = txtFirstName.Text;
            string lName = txtLastName.Text;
            string eMail = txtEmail.Text;
            string bDay = txtBirthday.Text;
            Response.Redirect("Default3.aspx?name=" + fName + "&bDay=" + bDay);
        }
}