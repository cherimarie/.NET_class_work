using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Donor
/// </summary>
public class Donor
{
        private string lastName;
        private string firstName;
        private string address;
        private string city;
        private string state;
        private string zip;
        private string email;
        private string phone;
        private double donationAmount;
 //making them private, then doing getters and setters, controls how things are accessible

	public Donor()
	{
		// constructor= a method that constructs the class- like "def initialize" 
        //you can have multiple constructors, for different situations, but only one will run at a time.
        //it will have no type or void in the name, name will be same as class name.
		}

    #region public_properties 
    public string LastName
    { //this is a property structure, allows you to do getting and setting without writing separate methods for both.
        //can not accept an argument.
        get {return lastName;}
            //this is the accessor- lets you see the value
        set { lastName = value;  }
            //mutator- lets you change the value 
     }
    public string FirstName
    { 
        get  { return firstName;}
        set { firstName = value; }
    }
    public string Address
    {
        get { return address; }
        set { address = value; }
    }
    public string City
    {
        get { return city; }
        set { city = value; }
    }
    public string State
    {
        get { return state; }
        set { state = value; }
    }
    public string Zip
    {
        get { return zip; }
        set { zip = value; }
    }
    public string Email
    {
        get { return email; }
        set { email = value; }
    }
    public string Phone
    {
        get { return phone; }
        set { phone = value; }
    }
    public double DonationAmount
    {
        get { return donationAmount; }
        set { donationAmount = value; }
    }
    #endregion
}