using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OTMS
{
    public partial class booking : System.Web.UI.Page
    {
        SqlConnection conn;
        SqlCommand command;
        
        String rid,id;
        String connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            pid.Text = (String)Session["red"];
          

            conn = new SqlConnection(connectionString);
            conn.Open();

            String selectdata="select * from packagedetails where p_id='"+Session["red"]+"'";
            command=new SqlCommand(selectdata,conn);
            SqlDataReader rdr=command.ExecuteReader();

            if(rdr.HasRows)
            {
                while(rdr.Read())
                {
                    pkname.Text = rdr["PackageName"].ToString();
                    ctg.Text = rdr["Category"].ToString();
                    des.Text = rdr["Description"].ToString();
                    type.Text = rdr["Types"].ToString();
                    day.Text = rdr["Days"].ToString();
                    amount.Text = rdr["Amount"].ToString();
                }

            }
            conn.Close();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            String rand=randomnumber();
           
            
            SqlConnection conn = new SqlConnection(connectionString);
            SqlCommand command = new SqlCommand();
          //  SqlCommand cmd = new SqlCommand();
            command.Connection = conn;
            //cmd.Connection = conn;
            conn.Open();
          /*  decimal a,b,c;
            bool isAValid=decimal.TryParse(amount.Text, out a);
            bool isBValid=decimal.TryParse(TextBox1.Text, out b);
            if(isAValid && isBValid)
            {
                c=a*b;
            }*/

            command.CommandText = "insert into booking (packageID,PackageName,Category,Description,Types,Days,Amount,Date,BookingID,user_name,payment,passenger) values (@packid,@gender,@full_name,@email,@country,@zip_code,@city,@Age,@c_id,@session,@pay,@nop)";
            command.Parameters.AddWithValue("@packid", pid.Text);
            command.Parameters.AddWithValue("@gender", pkname.Text);
            command.Parameters.AddWithValue("@full_name", ctg.Text);
            command.Parameters.AddWithValue("@email", des.Text);
            command.Parameters.AddWithValue("@country", type.Text);
            command.Parameters.AddWithValue("@zip_code", day.Text);

            command.Parameters.AddWithValue("@city", Int32.Parse(amount.Text) * Int32.Parse(TextBox1.Text));
            command.Parameters.AddWithValue("@Age", date.Text);
            command.Parameters.AddWithValue("@c_id", rand);
            command.Parameters.AddWithValue("@pay", RadioButtonList1.Text.ToString());
            //cmd.CommandText = "insert into booking (user_name) values (@Username)";
            command.Parameters.AddWithValue("@session", Session["username"]);
            command.Parameters.AddWithValue("@nop", TextBox1.Text);
            SqlDataReader rdr1 = command.ExecuteReader();
            rdr1.Close();

            //SqlDataReader rdr2 = cmd.ExecuteReader();
           // rdr2.Close();


            //cmd.ExecuteNonQuery();
            Label1.Text = "Booking Successful....";
            Response.Redirect("bookingstatus.aspx");

            conn.Close();
        }
        private String randomnumber()
        {
            SqlConnection conn = new SqlConnection(connectionString);
            conn.Open();

            Random rnd = new Random();
            id = rnd.Next(1, 150).ToString();
            String select = "select BookingID from booking";
            SqlCommand command = new SqlCommand(select, conn);
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataSet data = new DataSet();
            adapter.Fill(data, "id");
            foreach (DataRow row in data.Tables["id"].Rows)
            {
                String did = "" + row["BookingID"];
                if (did != id)
                {
                    rid = id;
                    Session["bid"] = rid;
                    break;
                }
            }
            if (rid == null)
            {
                rid = id;
            }
            conn.Close();
            return rid;
        }
}
}