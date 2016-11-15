using System;
using System.Collections.Generic;
using System.Data.SqlClient;

using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace OTMS
{
    public partial class income : System.Web.UI.Page
    {
      
       
       
        


         protected void Page_Load(object sender, EventArgs e)
        {

            string connectionString;
            connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;

            SqlConnection conn = new SqlConnection(connectionString);
            SqlCommand command = new SqlCommand();

            command.Connection = conn;
            conn.Open();
            String selectdata = "select sum(amount) from booking";
            command.CommandText = selectdata;
            
           
            
            int cnt = (int)command.ExecuteScalar();
            Label1.Text = cnt.ToString();
        }
    }
}