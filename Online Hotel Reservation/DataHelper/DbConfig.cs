using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace DataHelper
{
    public class DbConfig
    {

        #region Connection String Setup
        public static SqlConnection ConnectionString()
        {
            return new SqlConnection
                (@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\ian_s\Documents\JaeNuguid\JaeNuguid\JaeNuguid\JaeNuguid\App_Data\Database1.mdf;Integrated Security=True");
        }
        #endregion

    }
}
