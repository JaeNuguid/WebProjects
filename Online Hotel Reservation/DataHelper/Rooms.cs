using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataHelper
{
    public class Room
    {
        public int Id { get; set; }
        public String RoomNo { get; set; }
        public int type { get; set;  }
        public String RoomType { get; set; }
        public decimal Price { get; set; }
        public String Formatted { get; set; }
    }
}
