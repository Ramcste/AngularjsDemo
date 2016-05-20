using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AngularjsDemo.Models.StoredPro.Input
{
    public class ConsumingUserUpdate_Input
    {
        public int Id { get; set; }

        public string ConsumerName { get; set; }

        public int ProductId { get; set; }

        public int ConsumedQuantity { get; set; }

        public decimal Amount { get; set; }

        public bool Paid { get; set; }
    }
}