using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace OTMS
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox tb1 = new TextBox();
            tb1.ID = "p1";
            Panel1.Controls.Add("p1");
        }
    }
}