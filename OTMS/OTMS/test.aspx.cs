using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace OTMS
{
    public partial class test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView GridView1;
            String CS = "Data Source=.;database=sample;integrated security=SSPI";
            SqlConnection con= new SqlConnection(CS);
            con.Open();
            try
            {
                SqlCommand cmd = new SqlCommand("Select * from tb1", con);
               
                GridView1.DataSource = cmd.ExecuteReader();
                GridView1.DataBind();
                
            }
            catch
            {

            }
            finally
            {
                con.Close();
            }
            
        }
    }
}