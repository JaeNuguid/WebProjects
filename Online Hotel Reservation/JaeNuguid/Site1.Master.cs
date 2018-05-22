using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JaeNuguid
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string s = this.Page.Request.FilePath;

            //current.Text = s;

            if (s.Equals("/Home.aspx"))
            { 
                nav1.Attributes.Add("class", "nav-item active");
                nav3.Attributes.Add("class", "nav-item");
                nav2.Attributes.Add("class", "nav-item");
            }
            else if (s.Equals("/Rooms.aspx") || s.Equals("/Book.aspx") || s.Equals("/UserDetails.aspx"))
            {
                nav1.Attributes.Add("class", "nav-item");
                nav2.Attributes.Add("class", "nav-item active");
                nav3.Attributes.Add("class", "nav-item");
            }
            else if (s.Equals("/About.aspx"))
            {
                nav1.Attributes.Add("class", "nav-item");
                nav3.Attributes.Add("class", "nav-item active");
                nav2.Attributes.Add("class", "nav-item");
            }
        }

        protected void logout(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("~/Login.aspx");
        }
    }
}