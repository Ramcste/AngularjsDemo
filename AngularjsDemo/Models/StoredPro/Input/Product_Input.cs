﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AngularjsDemo.Models.StoredPro.Input
{
    public class Product_Input
    {
        public int Id { get; set; }

        public string Name { get; set; }

        public  int Quantity { get; set; }

        public decimal UnitPrice { get; set; }

        public DateTime PurchaseDateTime { get; set; }

        public string SupplierName { get; set; }


    }
}