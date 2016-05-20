using AngularjsDemo.Models.StoredPro;
using AngularjsDemo.Models.StoredPro.Input;
using AngularjsDemo.Models.StoredPro.Output;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AngularjsDemo.Models
{
    public class DemoDal
    {

        public StoredPocContext db = new StoredPocContext();

        // for product
  
        public void ProductSave(Product_Input input)
        {
           
            db.ProductCreate.CallStoredProc(input);
        }


        public void ProductUpdate(ProductUpdate_Input input)
        {
            db.ProductUpdate.CallStoredProc(input);
        }
       public GetProduct_ResultSet GetProductById(GetProductById_Input input)
        {
            GetProduct_ResultSet product = db.ProductByIdInput.CallStoredProc(input).ToList<GetProduct_ResultSet>().FirstOrDefault();

            return product;
        }

   
        public void ProductDelete(GetProductById_Input input)
        {
            db.ProductDelete.CallStoredProc(input);
        }

 
        public List<GetProduct_ResultSet> GetAllProduct()
        {
            List<GetProduct_ResultSet> products = new List<GetProduct_ResultSet>();

             products = db.ProductGet.CallStoredProc().ToList<GetProduct_ResultSet>();

            return products;
        }


        // for consumer

        public void ConsumerSave(Consumer_Input input)
        {
            db.ConsumingUserCreate.CallStoredProc(input);
        }

 
        public void ConsumerUpdate(ConsumingUserUpdate_Input input)
        {
            db.ConsumingUserUpdate.CallStoredProc(input);
        }

   
        public GetConsumer_ResultSet GetConsumerById(GetConsumerById_Input input)
        {
            GetConsumer_ResultSet consumer = db.ConsumingUserByIdInput.CallStoredProc(input).ToList<GetConsumer_ResultSet>().FirstOrDefault();

            return consumer;
        }


        public void ConsumerDelete(GetConsumerById_Input input)
        {
            db.ConsumingUserDelete.CallStoredProc(input);
        }


    
        public List<GetConsumer_ResultSet> GetAllConsumers()
        {
            List<GetConsumer_ResultSet> consumers = db.ConsumingUserGet.CallStoredProc().ToList<GetConsumer_ResultSet>();


            return consumers;
        }


    }
}