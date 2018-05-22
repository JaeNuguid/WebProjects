using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataHelper
{
    public class Account
    {
        private String fullname;

        public int UserId { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string EmailAddress { get; set; }
        public string Password { get; set; }
        public int AccountId { get; set; }
        public String FullName {
            get {
                return FirstName + " " + LastName;
            }
            set {
                fullname = value;
            }
        }
    }
}
