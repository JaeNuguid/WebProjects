using DataHelper;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JaeNuguid
{
    public partial class HotelLogin : System.Web.UI.Page
    {
        private DbHelper db = new DbHelper();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string emailaddress = txtUsername.Text;
                string password = txtPassword.Text;

                if (db.DoesExist(txtUsername.Text))
                {
                    DataTable dt = db.Userinfo_Login(emailaddress, password);

                    // if login success
                    if (Convert.ToBoolean(dt.Rows.Count))
                    {
                        Account acct = new Account
                        {
                            EmailAddress = emailaddress,
                            Password = password,
                            UserId = Convert.ToInt32(dt.Rows[0]["Id"].ToString()),
                            FirstName = dt.Rows[0]["FirstName"].ToString(),
                            LastName = dt.Rows[0]["LastName"].ToString(),
                            AccountId = Convert.ToInt32(dt.Rows[0]["AccountId"].ToString())
                        };
                        // introduce session
                        Session["account"] = acct;


                        // if active is true.. redirect to book page
                        // must NOT be admin
                        if (Session["active"] != null && (bool)Session["active"] && !db.isAdmin(acct.EmailAddress, acct.Password))
                        {
                            Response.Redirect("Book.aspx");
                        }
                        else 
                        {
                            if (db.isAdmin(acct.EmailAddress, acct.Password))
                            {
                                Response.Redirect("ManageRoom.aspx");
                            }
                            else
                            {
                                Response.Redirect("Home.aspx");
                            }
                        }
                       

                    }
                    else
                    {
                        Response.Write("<script>alert('Sorry the password you entered did not match our records. Please double-check and try again.')</script>");
                    }


                }
                else
                {

                    Response.Write("<script>alert('The username and password you entered did not match our records. Please double-check and try again.')</script>");


                }


            }
        }
    }
}