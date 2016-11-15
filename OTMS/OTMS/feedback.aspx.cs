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
    public partial class feedback : System.Web.UI.Page
    {
        string connectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(connectionString);
            SqlCommand command = new SqlCommand();
            command.Connection = conn;
            conn.Open();
            command.CommandText = "insert into Feedback (Rating,comments,p_id) values (@rat,@cmt,@pid)";
            command.Parameters.AddWithValue("@rat", Rating.SelectedItem.Text.ToString());
            command.Parameters.AddWithValue("@cmt", comments.Text.ToString());
            command.Parameters.AddWithValue("@pid", DropDownList1.Text.ToString());
            command.ExecuteNonQuery();
            Label1.Text = "Thank You For Feedback";

        }
    }
}