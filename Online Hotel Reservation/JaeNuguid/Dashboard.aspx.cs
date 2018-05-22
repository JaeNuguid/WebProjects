using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataHelper;

namespace JaeNuguid
{
    public partial class Dashboard : System.Web.UI.Page
    {

        private List<Room> myList;
        DbHelper db = new DbHelper();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DeluxeTable();
            }

        }

        private void DeluxeTable()
        {
            BtnSuite.CssClass = "btn btn-primary";
            BtnRegular.CssClass = "btn btn-primary";
            BtnDeluxe.CssClass = "btn btn-primary active";

            myList = new List<Room>();
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
                    myList.Add(r);
                }
            }
            BindEvent();
        }

        private void SuitesTable()
        {
            BtnDeluxe.CssClass = "btn btn-primary";
            BtnRegular.CssClass = "btn btn-primary";
            BtnSuite.CssClass = "btn btn-primary active";

            myList = new List<Room>();
            DataTable dt = db.DisplayAllRooms();
            foreach (DataRow row in dt.Rows)
            {
                Room r = new Room();
                r.Id = Convert.ToInt32(row["Id"]);
                r.RoomNo = row["RoomNo"].ToString();
                r.RoomType = row["title"].ToString();

                r.Price = Convert.ToDecimal(row["Price"].ToString());
                r.Formatted = r.Price.ToString("c");
                if (r.RoomType.Equals("Suite"))
                {

                    myList.Add(r);
                }
            }
            BindEvent();
        }

        private void RegularTable()
        {
            BtnDeluxe.CssClass = "btn btn-primary";
            BtnSuite.CssClass = "btn btn-primary";
            BtnRegular.CssClass = "btn btn-primary active";
            myList = new List<Room>();
            DataTable dt = db.DisplayAllRooms();
            foreach (DataRow row in dt.Rows)
            {
                Room r = new Room();
                r.Id = Convert.ToInt32(row["Id"]);
                r.RoomNo = row["RoomNo"].ToString();
                r.RoomType = row["title"].ToString();
                r.Price = Convert.ToDecimal(row["Price"].ToString());
                r.Formatted = r.Price.ToString("c");
                if (r.RoomType.Equals("Regular"))
                {
                    myList.Add(r);
                }
            }
            BindEvent();
        }

        private void BindEvent()
        {
            rptTrans.DataSource = myList;
            rptTrans.DataBind();
        }

        protected void btnAddClick(object sender, EventArgs e)
        {
            Room room = new Room();
            room.RoomNo = RoomNo.Text;
            room.type = Convert.ToInt32(roomtype.SelectedValue);
            room.Price = Convert.ToDecimal(price.Text);
            
            if (db.AddRoom(room))
            {
                RoomNo.Text = "";
                price.Text = "";

                switch (room.type + 1)
                {
                    case 1: DeluxeTable(); break;
                    case 2: SuitesTable(); break;
                    case 3: RegularTable(); break;
                    default: DeluxeTable(); break;
                }

                roomtype.SelectedIndex = 0;
            }
            else
            {
                RoomNo.Text = "";
                price.Text = "";

            }


        }

        protected void Suite_Click(object sender, EventArgs e)
        {
            SuitesTable();
        }

        protected void Regular_Click(object sender, EventArgs e)
        {
            RegularTable();
        }

        protected void Deluxe_Click(object sender, EventArgs e)
        {
            DeluxeTable();
        }
    }
}