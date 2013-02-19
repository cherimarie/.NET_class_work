using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// This class will take in the person key and use it to run a query and retun the customer's first and last names concatinated together into a string. 
/// </summary>
public class CustomerName
{
    SqlConnection connect;
    int personKey;

	public CustomerName(int pKey)
	{
        string connectionString = @"Data Source=localhost; initial catalog=Automart; user=RegCustomerLogin; password=P@ssw0rd1;";

        connect = new SqlConnection(connectionString);
        personKey = pKey;
	}

    public string CustomerNameFetch()
    {
        string info = null;
        string sql = "Select FirstName, LastName From Person Where PersonKey=@PersonKey";
        SqlCommand cmd = new SqlCommand(sql, connect);
        cmd.Parameters.AddWithValue("@personKey", personKey);
      
        SqlDataReader reader = null;
        connect.Open();
        reader = cmd.ExecuteReader();
        while (reader.Read())
        {
            info = reader["FirstName"].ToString() + " " + reader["LastName"].ToString();
        }
        reader.Close();
        connect.Close();

        return info;
    }

    public string CustomerVehicleFetch()
    {
        string auto = null;
        string sql = "Select VehicleYear, VehicleMake From vehicle Where PersonKey=@PersonKey";
        SqlCommand cmd = new SqlCommand(sql, connect);
        cmd.Parameters.AddWithValue("@personKey", personKey);

        SqlDataReader reader = null;
        connect.Open();
        reader = cmd.ExecuteReader();
        while (reader.Read())
        {
            auto = reader["VehicleYear"].ToString() + " " + reader["VehicleMake"].ToString();
        }
        reader.Close();
        connect.Close();

        return auto;
    }

}