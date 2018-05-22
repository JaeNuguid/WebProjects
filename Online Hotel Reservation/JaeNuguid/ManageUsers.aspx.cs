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
    public partial class ManageProducts : System.Web.UI.Page
    {
        private List<Account> userList;
        private DbHelper db = new DbHelper();
        private static int indexAt;

        protected void Page_Load(object sender, EventArgs e)
        {
            RefreshTable();
        }

        private void RefreshTable()
        {
            userList = new List<Account>();
            DataTable dt = db.DisplayAllUser();
            foreach (DataRow row in dt.Rows)
            {
                Account r = new Account();
                r.UserId = Convert.ToInt32(row["Id"]);
                r.FirstName = row["FirstName"].ToString();
                r.LastName = row["LastName"].ToString();
                r.EmailAddress = row["EmailAddress"].ToString();
                r.Password = row["Password"].ToString();
                r.AccountId = Convert.ToInt32(row["AccountId"]);
                userList.Add(r);
            }
            BindEvent();
        }

        private void BindEvent()
        {
            rptr.DataSource = userList;
            rptr.DataBind();
        }

        protected void Rptr_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

            int index = e.Item.ItemIndex;

            Label Id = (Label)rptr.Items[index].FindControl("LblId");

            if (e.CommandName == "onDelete")
            {
                // finding control in repeater controls
                Label lblId = (Label)rptr.Items[e.Item.ItemIndex].FindControl("LblId");

                // delete item
                indexAt = Convert.ToInt32(lblId.Text);
                db.DeleteUser(indexAt);
                Response.Write("<script>alert('User Deleted!')</script>");
                RefreshTable();
            }


        }

        protected void btn_onClick(object sender, EventArgs e)
        {
            Account newAccount = new Account();
            newAccount.EmailAddress = Email.Text;
            newAccount.Password = Password.Text;
            newAccount.FirstName = FirstName.Text;
            newAccount.LastName = LastName.Text;
            newAccount.AccountId = Convert.ToInt32(role.SelectedValue);

            if (db.AddUser(newAccount))
            {
                RefreshTable();
            }

        }

        protected void Admin_onClick(object sender, EventArgs e)
        {


            BtnDeluxe.CssClass = "btn btn-primary active";
            BtnSuite.CssClass = "btn btn-primary";

            userList = new List<Account>();
            DataTable dt = db.DisplayAdmins();
            foreach (DataRow row in dt.Rows)
            {
                Account r = new Account();
                r.UserId = Convert.ToInt32(row["Id"]);
                r.FirstName = row["FirstName"].ToString();
                r.LastName = row["LastName"].ToString();
                r.EmailAddress = row["EmailAddress"].ToString();
                r.Password = row["Password"].ToString();
                r.AccountId = Convert.ToInt32(row["AccountId"]);
                userList.Add(r);
            }
            BindEvent();

        }


        protected void Client_onClick(object sender, EventArgs e)
        {


            BtnDeluxe.CssClass = "btn btn-primary";

            BtnSuite.CssClass = "btn btn-primary active";
            userList = new List<Account>();
            DataTable dt = db.DisplayClients();
            foreach (DataRow row in dt.Rows)
            {
                Account r = new Account();
                r.UserId = Convert.ToInt32(row["Id"]);
                r.FirstName = row["FirstName"].ToString();
                r.LastName = row["LastName"].ToString();
                r.EmailAddress = row["EmailAddress"].ToString();
                r.Password = row["Password"].ToString();
                r.AccountId = Convert.ToInt32(row["AccountId"]);
                userList.Add(r);
            }
            BindEvent();
        }


    }
}