using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataHelper;
using System.Data;

namespace JaeNuguid
{
    public partial class Book1 : System.Web.UI.Page
    {

        List<String> roomList;
        DbHelper db = new DbHelper();
        Account acc = new Account();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["account"] == null)
            {
                Session["active"] = true;
                Response.Redirect("HotelLogin.aspx");
            }
            else
            {
                acc = (Account)Session["account"];
            }

            if (Page.IsPostBack)
            {
                roomList = new List<String>();

            }

            else if (!IsPostBack)
            {
                
                Session["booked"] = false;
                roomList = new List<String>();
                DataTable dt = db.DisplayAllRooms();
                foreach (DataRow row in dt.Rows)
                {
                    Room r = new Room();
                    r.Id = Convert.ToInt32(row["Id"]);
                    r.RoomNo = row["RoomNo"].ToString();
                    r.RoomType = row["title"].ToString();

                    r.Price = Convert.ToDecimal(row["Price"].ToString());
                    r.Formatted = r.Price.ToString("c");
                    if (r.RoomType.Equals("Deluxe"))
                    {
                        roomList.Add(r.RoomNo);
                    }
                }
                RoomNo.DataSource = roomList;
                RoomNo.DataBind();
                
            }


        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

        }

        protected void roomNo_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void roomtype_SelectedIndexChanged(object sender, EventArgs e)
        {
            switchcase();
        }

        protected void roomtype_TextChanged(object sender, EventArgs e)
        {
            switchcase();
        }

        private void switchcase()
        {
            switch (Convert.ToInt32(roomtype.SelectedValue))
            {
                case 1:
                    DataTable dt = db.DisplayAllRooms();
                    foreach (DataRow row in dt.Rows)
                    {
                        Room r = new Room();
                        r.Id = Convert.ToInt32(row["Id"]);
                        r.RoomNo = row["RoomNo"].ToString();
                        r.RoomType = row["title"].ToString();

                        r.Price = Convert.ToDecimal(row["Price"].ToString());
                        r.Formatted = r.Price.ToString("c");
                        if (r.RoomType.Equals("Deluxe"))
                        {
                            roomList.Add(r.RoomNo);
                        }
                    }
                    RoomNo.DataSource = roomList;
                    RoomNo.DataBind();

                    break;



                case 2:
                    DataTable dt2 = db.DisplayAllRooms();
                    foreach (DataRow row in dt2.Rows)
                    {
                        Room r = new Room();
                        r.Id = Convert.ToInt32(row["Id"]);
                        r.RoomNo = row["RoomNo"].ToString();
                        r.RoomType = row["title"].ToString();

                        r.Price = Convert.ToDecimal(row["Price"].ToString());
                        r.Formatted = r.Price.ToString("c");
                        if (r.RoomType.Equals("Suite"))
                        {
                            roomList.Add(r.RoomNo);
                        }
                    }
                    RoomNo.DataSource = roomList;
                    RoomNo.DataBind();

                    break;
                case 3:
                    DataTable dt3 = db.DisplayAllRooms();
                    foreach (DataRow row in dt3.Rows)
                    {
                        Room r = new Room();
                        r.Id = Convert.ToInt32(row["Id"]);
                        r.RoomNo = row["RoomNo"].ToString();
                        r.RoomType = row["title"].ToString();

                        r.Price = Convert.ToDecimal(row["Price"].ToString());
                        r.Formatted = r.Price.ToString("c");
                        if (r.RoomType.Equals("Regular"))
                        {
                            roomList.Add(r.RoomNo);
                        }
                    }
                    RoomNo.DataSource = roomList;
                    RoomNo.DataBind();


                    break;
            }
        }

        protected void btnSubmit_Click1(object sender, EventArgs e)
        {
            Session["booked"] = true;
            Room room = db.GetRoom(RoomNo.Text);

            BookDetails bookDetails = new BookDetails();
            bookDetails.UserId = acc.UserId;
            bookDetails.RoomId = room.Id;
            bookDetails.CheckIn = txtCheckin.Text;
            bookDetails.CheckOut = txtCheckout.Text;

            int adults = Convert.ToInt32(txtAdult.Text);
            int child = Convert.ToInt32(txtChild.Text);
            bookDetails.Guests = adults + child;
            bookDetails.Total = room.Price * bookDetails.Guests;

            Session["book_details"] = bookDetails;
            Session["room"] = room;

            Response.Redirect("UserDetails.aspx");
        }
    }
}