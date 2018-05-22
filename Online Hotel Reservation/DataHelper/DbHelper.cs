using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using DataHelper;

namespace DataHelper
{
    public class DbHelper
    {
        #region Connection setup
        public static SqlConnection conn = DbConfig.ConnectionString();
        #endregion 

        /************ ACCOUNT DB FUNCTIONS ***********/

        /* Add account to User table */
        public Boolean AddUser(Account account)
        {

            DataTable Dt = new DataTable();
            conn.Open();

            SqlCommand cmd = new SqlCommand("AddUser", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@first", SqlDbType.VarChar).Value = account.FirstName;
            cmd.Parameters.Add("@last", SqlDbType.VarChar).Value = account.LastName;
            cmd.Parameters.Add("@email", SqlDbType.VarChar).Value = account.EmailAddress;
            cmd.Parameters.Add("@pass", SqlDbType.VarChar).Value = account.Password;
            cmd.Parameters.Add("@accountId", SqlDbType.Int).Value = account.AccountId;

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            Dt.Clear();
            da.Fill(Dt);
            conn.Close();

            if (!Convert.ToBoolean(Dt.Rows.Count))
            {
                return true;
            }
            else
            {
                return false;
            }

        }

        /* Add account to User table */
        public Boolean AddRoom(Room room)
        {

            DataTable Dt = new DataTable();
            conn.Open();

            SqlCommand cmd = new SqlCommand("AddRoom", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@roomNo", SqlDbType.NChar).Value = room.RoomNo;
            cmd.Parameters.Add("@roomType", SqlDbType.Int).Value = room.type;
            cmd.Parameters.Add("@price", SqlDbType.Money).Value = room.Price;


            SqlDataAdapter da = new SqlDataAdapter(cmd);
            Dt.Clear();
            da.Fill(Dt);
            conn.Close();

            if (!Convert.ToBoolean(Dt.Rows.Count))
            {
                return true;
            }
            else
            {
                return false;
            }

        }


        public Boolean AddBook(BookDetails b)
        {
            DataTable Dt = new DataTable();
            conn.Open();

            SqlCommand cmd = new SqlCommand("InsertBook", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@UserId", SqlDbType.Int).Value = b.UserId;
            cmd.Parameters.Add("@RoomId", SqlDbType.Int).Value = b.RoomId;
            cmd.Parameters.Add("@Quantity", SqlDbType.Int).Value = b.Guests;
            cmd.Parameters.Add("@CheckIn", SqlDbType.VarChar).Value = b.CheckIn;
            cmd.Parameters.Add("@CheckOut", SqlDbType.VarChar).Value = b.CheckOut;
            cmd.Parameters.Add("@Status", SqlDbType.Int).Value = 1;
            cmd.Parameters.Add("@Total", SqlDbType.Money).Value = 2000;


            SqlDataAdapter da = new SqlDataAdapter(cmd);
            Dt.Clear();
            da.Fill(Dt);
            conn.Close();

            if (!Convert.ToBoolean(Dt.Rows.Count))
            {
                return true;
            }
            else
            {
                return false;
            }
        }


        public Room GetRoom(String roomNo)
        {
            Room room = new Room();
            DataTable Dt = new DataTable();

            String query = "SELECT r.Id, r.RoomNo, r.Type, rt.title, r.Price FROM Rooms as r" +
                " JOIN RoomType AS rt ON r.[Type] = rt.Id" +
                " WHERE r.RoomNo = '" + roomNo + "'";

            conn.Open();
            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.CommandType = CommandType.Text;
            
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            Dt.Clear();
            da.Fill(Dt);
            conn.Close();

            room.Id = Convert.ToInt32(Dt.Rows[0][0].ToString());
            room.RoomNo = Dt.Rows[0][1].ToString();
            room.type = Convert.ToInt32(Dt.Rows[0][2].ToString());
            room.RoomType = Dt.Rows[0][3].ToString();
            room.Price = Convert.ToDecimal(Dt.Rows[0][4].ToString());

            System.Diagnostics.Debug.WriteLine(Convert.ToInt32(Dt.Rows[0][0].ToString()));

            return room;
        }
        

        /* checking user */
        public Boolean DoesExist(string email) {

            DataTable Dt = new DataTable();

            conn.Open();

            SqlCommand cmd = new SqlCommand("CheckExisting", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@email", SqlDbType.VarChar).Value = email;

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            Dt.Clear();
            da.Fill(Dt);
            conn.Close();

            if (Convert.ToBoolean(Dt.Rows.Count)) {
                return true;
            }
            else {
                return false;
            }
        }

        /* login */
        public DataTable Userinfo_Login(string username, string password)
        {
            DataTable Dt = new DataTable();

            conn.Open();

            //LoginProcedure - Stored Procedure name
            SqlCommand cmd = new SqlCommand("LoginProcedure", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@username", SqlDbType.VarChar).Value = username;
            cmd.Parameters.Add("@password", SqlDbType.VarChar).Value = password;

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            Dt.Clear();
            da.Fill(Dt);
            conn.Close();
            return Dt;
        }

        /* SHOW ALL ROOMS */
        public DataTable DisplayAllRooms()
        {
            DataTable Dt = new DataTable();

            conn.Open();
            SqlCommand cmd = new SqlCommand("ShowAllRoom", conn);
            cmd.CommandType = CommandType.StoredProcedure;

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            Dt.Clear();
            da.Fill(Dt);
            conn.Close();
            return Dt;
        }


        public DataTable DisplayBookings()
        {
            DataTable Dt = new DataTable();

            conn.Open();
            SqlCommand cmd = new SqlCommand("DisplayBookings", conn);
            cmd.CommandType = CommandType.StoredProcedure;

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            Dt.Clear();
            da.Fill(Dt);
            conn.Close();
            return Dt;
        }

        public void DeleteRoom(int id)
        {
            DataTable Dt = new DataTable();

            conn.Open();
            SqlCommand cmd = new SqlCommand("DELETE FROM [Rooms] WHERE Id = " + id, conn);
            cmd.CommandType = CommandType.Text;

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            Dt.Clear();
            da.Fill(Dt);
            conn.Close();

        }

        public void DeleteUser(int id)
        {
            DataTable Dt = new DataTable();

            conn.Open();
            SqlCommand cmd = new SqlCommand("DELETE FROM [User] WHERE Id = " + id, conn);
            cmd.CommandType = CommandType.Text;

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            Dt.Clear();
            da.Fill(Dt);
            conn.Close();
        }

        public DataTable DisplayAllUser()
        {
            DataTable Dt = new DataTable();

            conn.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM [User]", conn);
            cmd.CommandType = CommandType.Text;

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            Dt.Clear();
            da.Fill(Dt);
            conn.Close();
            return Dt;
        }

        public DataTable DisplayDeluxe()
        {
            DataTable Dt = new DataTable();

            conn.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM [Rooms] WHERE Type = 1", conn);
            cmd.CommandType = CommandType.Text;

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            Dt.Clear();
            da.Fill(Dt);
            conn.Close();
            return Dt;
        }

        public DataTable DisplaySuites()
        {
            DataTable Dt = new DataTable();

            conn.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM [Rooms] WHERE Type = 2", conn);
            cmd.CommandType = CommandType.Text;

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            Dt.Clear();
            da.Fill(Dt);
            conn.Close();
            return Dt;
        }
        
        public DataTable DisplayRegular()
        {
            DataTable Dt = new DataTable();

            conn.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM [Rooms] WHERE Type = 3", conn);
            cmd.CommandType = CommandType.Text;

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            Dt.Clear();
            da.Fill(Dt);
            conn.Close();
            return Dt;
        }

        public int UserCount()
        {
            DataTable Dt = new DataTable();

            conn.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM [User]", conn);
            cmd.CommandType = CommandType.Text;

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            Dt.Clear();
            da.Fill(Dt);
            conn.Close();
            return Dt.Rows.Count;
        }

        public int RoomCount()
        {
            DataTable Dt = new DataTable();

            conn.Open();
            SqlCommand cmd = new SqlCommand("ShowAllRoom", conn);
            cmd.CommandType = CommandType.StoredProcedure;

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            Dt.Clear();
            da.Fill(Dt);
            conn.Close();
            return Dt.Rows.Count;
        }

        public Boolean isAdmin(string username, string password)
        {
            DataTable Dt = new DataTable();

            conn.Open();

            //LoginProcedure - Stored Procedure name
            SqlCommand cmd = new SqlCommand("LoginProcedure", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@username", SqlDbType.VarChar).Value = username;
            cmd.Parameters.Add("@password", SqlDbType.VarChar).Value = password;

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            Dt.Clear();
            da.Fill(Dt);
            conn.Close();

            if (Dt.Rows[0][5].ToString() == "1") { return true; }
            else return false;

        }

        public DataTable DisplayAdmins()
        {
            DataTable Dt = new DataTable();

            conn.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM [User] WHERE AccountId = 1", conn);
            cmd.CommandType = CommandType.Text;

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            Dt.Clear();
            da.Fill(Dt);
            conn.Close();
            return Dt;
        }

        public DataTable DisplayClients()
        {
            DataTable Dt = new DataTable();

            conn.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM [User] WHERE AccountId = 2", conn);
            cmd.CommandType = CommandType.Text;

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            Dt.Clear();
            da.Fill(Dt);
            conn.Close();
            return Dt;
        }



    }
}
