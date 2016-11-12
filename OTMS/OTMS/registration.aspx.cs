using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Data.Sql;
namespace OTMS
{
    public partial class registration : System.Web.UI.Page
    {
        string connectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        }



        protected void reg_Click(object sender, EventArgs e)
        {
            try
            {


                SqlConnection conn = new SqlConnection(connectionString);
                SqlCommand command = new SqlCommand();
                command.Connection = conn;
                conn.Open();
                command.CommandText = "insert into customer (user_name,gender,full_name,email,country,zip_code,city,Age,password) values (@username,@gender,@full_name,@email,@country,@zip_code,@city,@Age,@password)";
                command.Parameters.AddWithValue("@username", TextBox1.Text.ToString());
                command.Parameters.AddWithValue("@gender", RadioButtonList1.SelectedItem.Text.ToString());
                command.Parameters.AddWithValue("@full_name", Fnm.Text.ToString());
                command.Parameters.AddWithValue("@email", txtEmail.Text.ToString());
                command.Parameters.AddWithValue("@country", DropDownList1.SelectedItem.Text.ToString());
                command.Parameters.AddWithValue("@zip_code", TextBox2.Text.ToString());
                //  command.Parameters.AddWithValue("@c_id", C_ID.Text);
                command.Parameters.AddWithValue("@city", "sdfsdf");
                command.Parameters.AddWithValue("@Age", Age.Text.ToString());
                command.Parameters.AddWithValue("@password", txtPassword.Text.ToString());
                /*command.Parameters.AddWithValue("@p_id", P_ID.Text.ToString());*/
                int num_row = command.ExecuteNonQuery();
                if (num_row > 0)
                {
                    Response.Redirect("~/homepage.aspx");
                }
                else
                {
                    Response.Redirect("~/registration.aspx");
                }
            }
            catch (Exception e1)
            {
                msg.Text = e1.Message;
            }

        }
        
}
}