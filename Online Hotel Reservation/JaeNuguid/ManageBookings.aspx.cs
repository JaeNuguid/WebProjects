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
    public partial class Payment : System.Web.UI.Page
    {
        List<TblBooking> bookList;
        DbHelper db = new DbHelper();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bookList = new List<TblBooking>();
                DataTable dt = db.DisplayBookings();
                foreach (DataRow row in dt.Rows)
                {
                    TblBooking r = new TblBooking();
                    r.FullName = row[0].ToString();
                    r.RoomType = row[1].ToString();
                    r.RoomNo = row[2].ToString();
                    r.Guests = Convert.ToInt32(row[3].ToString());
                    r.CheckedIn = row[4].ToString();
                    r.CheckedOut = row[5].ToString();
                    r.Total = Convert.ToDecimal(row[6].ToString());
                    bookList.Add(r);
                }
                BindEvent();
            }


        }

        private void BindEvent()
        {
            rptTrans.DataSource = bookList;
            rptTrans.DataBind();
        }
    }
}