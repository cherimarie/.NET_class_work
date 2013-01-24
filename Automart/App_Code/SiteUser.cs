using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// This is information site users will enter about themselves when logging into the site. 
/// project: Automart site with login capability for users
/// date: jan 24, 2013
/// programmer: Cheri Allen
/// </summary>
public class SiteUser
{
    //private variables
    private string firstName;
      private string lastName;
    private DateTime birthDay;
    private string email;

      #region public properties
    public string FirstName
    {
        get { return firstName; }
        set { firstName = value; }
    }

     public string LastName
    {
        get { return lastName; }
        set { lastName = value; }
    }

        public DateTime BirthDay
    {
        get { return birthDay; }
        set { birthDay = value; }
    }

        public string Email
    {
        get { return email; }
        set { email = value; }
    }
#endregion

	public SiteUser()
	{
		//
		// TODO: Add constructor logic here
		//
	}

  //  public ToString()
  //  {
        //returns all information stored for specified user as a string

   // }
}