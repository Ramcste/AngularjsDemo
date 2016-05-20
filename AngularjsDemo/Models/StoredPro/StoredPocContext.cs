using AngularjsDemo.Models.StoredPro.Input;
using AngularjsDemo.Models.StoredPro.Output;
using CodeFirstStoredProcs;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AngularjsDemo.Models.StoredPro
{
    public class StoredPocContext:AngularjsDemoDBContext
    {

        // for  product

        [StoredProcAttributes.Name("[Product.Create]")]
        public StoredProc<Product_Input> ProductCreate { get; set; }


        [StoredProcAttributes.Name("[Product.Update]")]
        public StoredProc<ProductUpdate_Input> ProductUpdate { get; set; }



        [StoredProcAttributes.Name("[Product.Get]")]


        [StoredProcAttributes.ReturnTypes(typeof(GetProduct_ResultSet))]

        public StoredProc ProductGet { get; set; }



        [StoredProcAttributes.Name("[Product.GetProductById]")]


        [StoredProcAttributes.ReturnTypes(typeof(GetProduct_ResultSet))]

        public StoredProc<GetProductById_Input> ProductByIdInput { get; set; }



        [StoredProcAttributes.Name("[Product.Delete]")]
        public StoredProc<GetProductById_Input> ProductDelete { get; set; }



        //  for consuming user


        [StoredProcAttributes.Name("[Consumer.Create]")]
        public StoredProc<Consumer_Input> ConsumingUserCreate { get; set; }


        [StoredProcAttributes.Name("[Consumer.Update]")]
        public StoredProc<ConsumingUserUpdate_Input> ConsumingUserUpdate { get; set; }



        [StoredProcAttributes.Name("[Consumer.Get]")]


        [StoredProcAttributes.ReturnTypes(typeof(GetConsumer_ResultSet))]

        public StoredProc ConsumingUserGet { get; set; }



        [StoredProcAttributes.Name("[Consumer.GetConsumerById]")]


        [StoredProcAttributes.ReturnTypes(typeof(GetConsumer_ResultSet))]

        public StoredProc<GetConsumerById_Input> ConsumingUserByIdInput { get; set; }



        [StoredProcAttributes.Name("[Consumer.Delete]")]
        public StoredProc<GetConsumerById_Input> ConsumingUserDelete { get; set; }


       


        public StoredPocContext()
        {
            this.InitializeStoredProcs();

        }
    }

   
}