using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OTMS
{
    public partial class packagefilter : System.Web.UI.Page
    {
        SqlConnection conn;
        SqlCommand command;
        String connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String refvalue = DropDownList1.Text;

            conn = new SqlConnection(connectionString);
            conn.Open();

            DataTable n = new DataTable();

            String selectdata = "select " + refvalue + ",p_id from packagedetails";
            command = new SqlCommand(selectdata, conn);
            SqlDataReader rdr = command.ExecuteReader();

            GridView1.DataSource = rdr;
            GridView1.DataBind();
        }
    }
}