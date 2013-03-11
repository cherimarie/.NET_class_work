using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// This class will take the username (which is users email) and password and check it against data table Customer.RegisteredCustomer. 

public class Login
{
    private SqlConnection connect;
	public Login()
	{
        string connectionString = @"Data Source=localhost; initial catalog=Automart; user=RegCustomerLogin; password=P@ssw0rd1;";

        connect = new SqlConnection(connectionString);
	}

    public int UserLogin(string userEmail, string passWord)
    {
        int pKey = 0;
        string sql = "Select PersonKey, Email, CustomerPassword from RegisteredCustomer";
        SqlCommand cmd = new SqlCommand(sql, connect);
        SqlDataReader reader = null;
        connect.Open();
        reader = cmd.ExecuteReader();
        while (reader.Read())
        {
            if(reader["Email"].ToString().Equals(userEmail)
                && reader["CustomerPassword"].ToString().Equals(passWord))
            {
                pKey = int.Parse(reader["PersonKey"].ToString());
                break;
            }
        }
        reader.Close();
        connect.Close();

        return pKey;
    }
}