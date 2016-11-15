using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;

namespace OTMS
{
    public partial class admin : System.Web.UI.Page
    {
        String s = "";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            string strSelect = "SELECT * FROM admin WHERE user_name = @Username AND password = @Password";





            SqlConnection con = new SqlConnection(strCon);
            con.Open();
            SqlCommand cmd = new SqlCommand(strSelect, con);

            cmd.Parameters.AddWithValue("@Username", txtUsername.Text);
            cmd.Parameters.AddWithValue("@Password", txtPassword.Text);


            SqlDataReader reader = cmd.ExecuteReader();

            if (reader.HasRows)
            {
                Response.Redirect("action.aspx");
            }
            else
            {
                Label1.Text = "Invalid Username or Password";

            }




        }


    }

}

