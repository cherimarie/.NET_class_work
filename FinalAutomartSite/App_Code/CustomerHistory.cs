using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// This class will return the maintenance history for a customer.
/// </summary>
public class CustomerHistory
{
		 SqlConnection connect;
         int personKey;

    public CustomerHistory(int pKey)
    {
        string connectionString = @"Data Source=localhost; initial catalog=Automart; user=RegCustomerLogin; password=P@ssw0rd1;";

        connect = new SqlConnection(connectionString);
        personKey = pKey;
    }

    public string VehicleYearFetch()
    {
        string vehYear = null;

        string sql = "Select VehicleYear From vehicle Where PersonKey=@PersonKey";
        SqlCommand cmd = new SqlCommand(sql, connect);
        cmd.Parameters.AddWithValue("@personKey", personKey);

        SqlDataReader reader = null;
        connect.Open();
        reader = cmd.ExecuteReader();
        while (reader.Read())
        {         
            vehYear = reader["VehicleYear"].ToString();          
        }
        reader.Close();
        connect.Close();

        return vehYear;
    }

    public string VehicleMakeFetch()
    {
        string vehMake = null;
        
        string sql = "Select VehicleMake From vehicle Where PersonKey=@PersonKey";
        SqlCommand cmd = new SqlCommand(sql, connect);
        cmd.Parameters.AddWithValue("@personKey", personKey);

        SqlDataReader reader = null;
        connect.Open();
        reader = cmd.ExecuteReader();
        while (reader.Read())
        {
            vehMake = reader["VehicleMake"].ToString();
                  }
        reader.Close();
        connect.Close();

        return vehMake;
    }
}