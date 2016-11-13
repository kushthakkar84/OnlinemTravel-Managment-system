using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.SqlTypes;

namespace OTMS
{
    public partial class package : System.Web.UI.Page
    {
        /*String connectionString;*/
        protected void Page_Load(object sender, EventArgs e)
        {

            /*  connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;*/
        }


        protected void insert_Click1(object sender, EventArgs e)
        {
            
                SqlConnection con = new SqlConnection();
                con.ConnectionString = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\HP-PC\Source\Repos\OnlinemTravel-Managment-system\OTMS\OTMS\App_Data\OTMS.mdf;Integrated Security=True";
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                con.Open();
                cmd.CommandText = "insert into packagedetails (PackageName,Category,Description,Types,Days,Amount) values (@pnm,@ctg,@des,@type,@day,@amount)";
                cmd.Parameters.AddWithValue("@pnm",TextBox1.Text);
                cmd.Parameters.AddWithValue("@ctg", DropDownList2.SelectedItem.Text.ToString());
                cmd.Parameters.AddWithValue("@des", TextBox2.Text.ToString());
                cmd.Parameters.AddWithValue("@type", DropDownList3.SelectedItem.Text.ToString());
                cmd.Parameters.AddWithValue("@day", DropDownList4.SelectedItem.Text.ToString());
                cmd.Parameters.AddWithValue("@amount", TextBox4.Text.ToString());
                cmd.ExecuteNonQuery();
                Label1.Text = "insert Succesful";
                con.Close();
            }
            
        

        protected void update_Click(object sender, EventArgs e)
        {
           
            SqlConnection con = new SqlConnection();
            con.ConnectionString = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\HP-PC\Source\Repos\OnlinemTravel-Managment-system\OTMS\OTMS\App_Data\OTMS.mdf;Integrated Security=True";
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            con.Open();
            cmd.CommandText = "update packagedetails set Category=@ctgr,Description=@des ,Types=@type,Days=@day,Amount=@amount where PackageName=@pnm";
            cmd.Parameters.AddWithValue("@pnm", TextBox1.Text);
            cmd.Parameters.AddWithValue("@ctgr",DropDownList2.SelectedItem.Text.ToString());
            cmd.Parameters.AddWithValue("@des", TextBox2.Text.ToString());
            cmd.Parameters.AddWithValue("@type", DropDownList3.SelectedItem.Text.ToString());
            cmd.Parameters.AddWithValue("@day", DropDownList4.SelectedItem.Text.ToString());
            cmd.Parameters.AddWithValue("@amount", TextBox4.Text.ToString());
            cmd.ExecuteNonQuery();
            Label1.Text = "update Successful";
            con.Close();

        }
        protected void delete_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\HP-PC\Source\Repos\OnlinemTravel-Managment-system\OTMS\OTMS\App_Data\OTMS.mdf;Integrated Security=True";
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            con.Open();
            cmd.CommandText = "delete from packagedetails where PackageName=@pnm";
            cmd.Parameters.AddWithValue("@pnm", TextBox1.Text);
            cmd.ExecuteNonQuery();
            Label1.Text = "Delete Successful";
            con.Close();
        }
        protected void show_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\HP-PC\Source\Repos\OnlinemTravel-Managment-system\OTMS\OTMS\App_Data\OTMS.mdf;Integrated Security=True";
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            con.Open();
            cmd.CommandText = "select  * from packagedetails";
            SqlDataReader r = cmd.ExecuteReader();
            GridView1.DataSource = r;
            GridView1.DataBind();
           
            Label1.Text = "package Table";
            con.Close();
        }
}
}