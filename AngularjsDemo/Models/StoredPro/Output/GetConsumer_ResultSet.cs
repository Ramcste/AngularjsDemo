using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AngularjsDemo.Models.StoredPro.Output
{
    public class GetConsumer_ResultSet
    {
        public int Id { get; set; }

        public string ConsumerName { get; set; }

        public int ProductId { get; set; }

        public string ProductName { get; set; }

        public int ConsumedQuantity { get; set; }

        public decimal Amount { get; set; }

        public DateTime SoldDate { get; set; }

        public bool Paid { get; set; }
    }
}