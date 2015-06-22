using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLogic
{
    public class Validator
    {
        public Guid ID { get; set; }
        public string Status { get; set; }
        public string Reason { get; set; }
    }

    public class Constants
    {
        public const string Success = "Success";
        public const string Error = "Error";
        public const string Failure = "Failure";
        public const string FileName = "EventFile";
        public const string SuccessMessage = "Saved Successfully";
        public const string Yes = "Yes";
        public const string No = "No";
        public const string Exist = "Exist";
        public const string NotExist = "NotExist";
        public const int EmailSent = 1;
        public const int EmailPending = 1;
        public const string ALL = "All";
    }
}
