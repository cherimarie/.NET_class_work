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
    protected void SubBtnClick(object sender, EventArgs e)
    {
        DateTime bDate;
        //instantiate a new Site User
        SiteUser s = new SiteUser();
        //assign values to properties from text boxes
        s.FirstName = txtFirstName.Text;
        s.LastName = txtLastName.Text;
        bool IsDate = DateTime.TryParse(txtBirthday.Text, out bDate);
        if (IsDate)
        {
            s.BirthDay = bDate;
        }
        else
        {
            Response.Write("<script type='text/javaScript'>alert('Enter a valid date')</script>");
            return;
        }
        s.Email = txtEmail.Text;

        //save new instance to a session variable
        Session["NewUser"] = s;

        //redirect to next page
        Response.Redirect("Default2.aspx");
    }
}