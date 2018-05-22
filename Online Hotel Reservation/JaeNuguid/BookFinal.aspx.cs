using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataHelper;

namespace JaeNuguid
{
    public partial class BookFinal : System.Web.UI.Page
    {
        Account acct;
        BookDetails bookdetails;
        Room room;
        DbHelper db = new DbHelper();

        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["account"] == null)
            {
                Response.Redirect("HotelLogin.aspx");
            }

            acct = (Account)Session["account"];
            bookdetails = (BookDetails)Session["book_details"];
            room = (Room)Session["room"];


            firstName.Text = acct.FirstName;
            lastName.Text = acct.LastName;
            Guests.Text = bookdetails.Guests + "";
            TotalPrice.Text = (bookdetails.Total).ToString("c");
            CheckInDate.Text = bookdetails.CheckIn;
            CheckOutDate.Text = bookdetails.CheckOut;
            RoomType.Text = room.RoomType;
            RoomNo.Text = room.RoomNo;


        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            if (db.AddBook(bookdetails))
            {
                Response.Redirect("Home.aspx");
            }
            else
            {

                Response.Redirect("Failed!!");
            }
        }
    }
}