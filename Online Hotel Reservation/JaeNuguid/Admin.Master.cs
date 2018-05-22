using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataHelper;
namespace JaeNuguid
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        DbHelper db = new DbHelper();


        protected void Page_Load(object sender, EventArgs e)
        {
            string s = this.Page.Request.FilePath;
            lblRooms.Text = "" + db.RoomCount();
            lblUsers.Text = "" + db.UserCount();

            //current.Text = s;

            if (s.Equals("/ManageRoom.aspx"))
            {

                nav1.Attributes.Add("class", "nav-link");
                nav3.Attributes.Add("class", "nav-link active");
                nav2.Attributes.Add("class", "nav-link");
            }
            else if (s.Equals("/ManageUsers.aspx"))
            {
                nav1.Attributes.Remove("active");
                nav2.Attributes.Add("class", "nav-link active");
                nav3.Attributes.Add("class", "nav-link");
            }
            else if (s.Equals("/ManageBookings.aspx"))
            {
                nav1.Attributes.Remove("active");
                nav4.Attributes.Add("class", "nav-link active");
                nav3.Attributes.Add("class", "nav-link");
                nav2.Attributes.Add("class", "nav-link");
            }

        }

        protected void Unnamed2_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("HotelLogin.aspx");
        }

        protected void Unnamed3_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("HotelLogin.aspx");
        }
    }
}