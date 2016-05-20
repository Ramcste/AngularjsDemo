using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace AngularjsDemo.Models
{
    public class AngularjsDemoDBContext: DbContext
    {
        static AngularjsDemoDBContext()
        {
            Database.SetInitializer<AngularjsDemoDBContext>(null);
        }

        public AngularjsDemoDBContext(): base("Name=DefaultConnection")
        {
            //this.Database.CommandTimeout = 600;
        }
    }
}