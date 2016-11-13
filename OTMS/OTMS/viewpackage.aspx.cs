using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OTMS
{
    public partial class viewpackage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["red"] != null) 
            {
                Label1.Text = (String)Session["red"];
                Session["red"] = null;
            }
        }
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "booking") 
            {
                Session["red"] = e.CommandArgument;
                Response.Redirect("booking.aspx");
            }
        }
}
}