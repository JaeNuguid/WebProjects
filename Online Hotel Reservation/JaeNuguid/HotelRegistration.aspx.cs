﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using DataHelper;
using System.Web.UI.WebControls;

namespace JaeNuguid
{
    public partial class HotelRegistration : System.Web.UI.Page
    {
        DbHelper db = new DbHelper();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                Account registered = new Account
                {
                    EmailAddress = TxtEmail.Text,
                    Password = TxtPassword.Text,
                    FirstName = txtFirstName.Text,
                    LastName = TxtLastName.Text,
                    AccountId = 2
                };

                if (!db.DoesExist(registered.EmailAddress))
                {
                    //if success
                    if (db.AddUser(registered))
                    {
                        Response.Redirect("Login.aspx");
                    }
                    else
                    {
                        Response.Write("<script>alert('Error registering user')</script>");
                    }
                }
                else
                {
                    Response.Write("<script>alert('Email Address already taken!')</script>");
                }


            }
        }
    }

}