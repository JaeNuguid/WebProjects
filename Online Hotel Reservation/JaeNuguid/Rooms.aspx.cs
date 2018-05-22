using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JaeNuguid
{
    public partial class Rooms : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
                
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            // deluxe
            if (Session["account"] == null)
            {
                Session["active"] = true;
                Response.Redirect("HotelLogin.aspx");
            }
            else
            {
                Session["roomtype"] = 1;
                Response.Redirect("Book.aspx");
            }

        }

        protected void Unnamed2_Click(object sender, EventArgs e)
        {
            //suites 
            if (Session["account"] == null)
            {
                Session["active"] = true;
                Response.Redirect("HotelLogin.aspx");
            }
            else
            {
                Session["roomtype"] = 2;
                Response.Redirect("Book.aspx");
            }
        }


        protected void Unnamed3_Click(object sender, EventArgs e)
        {
            // regularr
            if (Session["account"] == null)
            {
                Session["active"] = true;
                Response.Redirect("HotelLogin.aspx");
            }
            else
            {
                Session["roomtype"] = 3;
                Response.Redirect("Book.aspx");
            }
        }

    }
}