using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using DataHelper;

namespace JaeNuguid
{
    public partial class UserDetails : System.Web.UI.Page
    {
        Account acct;
        BookDetails bookdetails;
        Room room;
        DbHelper db = new DbHelper();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["account"] == null){
                Response.Redirect("HotelLogin.aspx");
                Session["active"] = true;
            }

            if(!(bool)Session["booked"] || Session["booked"] == null){
                Response.Redirect("Book.aspx");

            }

            acct = (Account) Session["account"];
            txtFirst.Text = acct.FirstName;
            txtLast.Text = acct.LastName;
            TxtEmail.Text = acct.EmailAddress;

            bookdetails = (BookDetails)Session["book_details"];
            room = (Room)Session["room"];

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Response.Redirect("BookFinal.aspx");
        }
    }
}