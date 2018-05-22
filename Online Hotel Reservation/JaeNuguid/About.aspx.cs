using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JaeNuguid
{
    public partial class About : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            if (Session["account"] == null)
            {
                Session["active"] = true;
                Response.Redirect("HotelLogin.aspx");
            }
            else
            {
                Response.Redirect("Book.aspx");
            }
        }
    }
}