using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataHelper
{
    public class TblBooking
    {
        public String FullName { get; set; }
        public String RoomType { get; set; }
        public String RoomNo { get; set; }
        public String CheckedIn { get; set; }
        public String CheckedOut { get; set; }
        public int Guests { get; set; }
        public decimal Total { get; set; }
    }
}
