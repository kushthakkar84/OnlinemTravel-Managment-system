using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OTMS
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        int flag;
        String conform_str, dropdown_str;
        protected void Page_Load(object sender, EventArgs e)
        {
            /*conform_str = (String)Request.QueryString["msg"];
            if (conform_str == "false")
            {
                error_msg.Text = "please enter detail first!!!!!";
            }*/
        }
        protected void Button1_Click(Object sender, EventArgs e)
        {
            


            String usernm = UserName.Text;
            String passwd = Password.Text;
            String connstring = "Data Source=ABCD;initial catalog=OTMS;integrated security=true";

            SqlConnection conn = new SqlConnection(connstring);
            try
            {
                String s = "";
                conn.Open();
                SqlCommand command = new SqlCommand();
                
                String selectdata = "select * from login_details";
                command.Connection = conn;
                command.CommandText = selectdata;

                SqlDataReader reader = command.ExecuteReader();

                while (reader.Read())
                {
                    if ((reader["username"].Equals(usernm) && reader["password"].Equals(passwd)))
                    {
                        //if (reader["type"].Equals(conform_str))
                        // {

                        flag = 1;
                        
                            Session["username"] = UserName.Text;
                            Session["password"] = Password.Text;
                            Response.Redirect("homepage.aspx");
                        //}
                    }
                    else
                    {
                        continue;
                    }
                }

                if (flag != 1)
                {
                   /* error_msg.Text = "Invalid Username or Password";*/
                }

            }
            catch (Exception ex)
            {
                //throw ex;
            }
        }
    }

}