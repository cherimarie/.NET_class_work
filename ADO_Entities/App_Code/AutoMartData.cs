﻿//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Collections.Generic;

public partial class AutoService
{
    public int AutoServiceID { get; set; }
    public string ServiceName { get; set; }
    public decimal ServicePrice { get; set; }
    public string ServiceDescription { get; set; }
}

public partial class Location
{
    public int LocationID { get; set; }
    public string LocationName { get; set; }
    public string LocationAddress { get; set; }
    public string LocationCity { get; set; }
    public string LocationState { get; set; }
    public string LocationZip { get; set; }
    public string LocationPhone { get; set; }
}

public partial class Person
{
    public Person()
    {
        this.RegisteredCustomers = new HashSet<RegisteredCustomer>();
        this.vehicles = new HashSet<vehicle>();
    }

    public int Personkey { get; set; }
    public string LastName { get; set; }
    public string FirstName { get; set; }

    public virtual ICollection<RegisteredCustomer> RegisteredCustomers { get; set; }
    public virtual ICollection<vehicle> vehicles { get; set; }
}

public partial class RegisteredCustomer
{
    public int RegisteredCustomerID { get; set; }
    public string Email { get; set; }
    public string CustomerPassword { get; set; }
    public Nullable<int> PersonKey { get; set; }

    public virtual Person Person { get; set; }
}

public partial class vehicle
{
    public int VehicleId { get; set; }
    public string LicenseNumber { get; set; }
    public string VehicleMake { get; set; }
    public string VehicleYear { get; set; }
    public Nullable<int> PersonKey { get; set; }

    public virtual Person Person { get; set; }
}
