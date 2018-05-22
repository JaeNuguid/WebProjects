using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataHelper
{
    public class BookDetails
    {
        public int Id { get; set; }
        public int UserId { get; set; }
        public int RoomId { get; set; }
        public decimal Total { get; set; }
        public int Guests { get; set; }
        public String CheckIn { get; set; }
        public String CheckOut { get; set; }
    }
}
