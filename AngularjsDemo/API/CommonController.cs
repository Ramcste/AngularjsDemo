using AngularjsDemo.Models;
using AngularjsDemo.Models.StoredPro.Input;
using AngularjsDemo.Models.StoredPro.Output;
using System;
using System.Collections.Generic;
using System.Web.Http;

namespace AngularjsDemo.API
{


    [RoutePrefix("api/Common")]
    public class CommonController : ApiController
    {
        private DemoDal dal = new DemoDal();
     

        [HttpPost]
        public IHttpActionResult Save(Product_Input input)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }
            input.PurchaseDateTime = DateTime.Now.Date;

            dal.ProductSave(input);

            return Ok(input);
        }


        [HttpPost]
        public IHttpActionResult Update(ProductUpdate_Input input)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }


            dal.ProductUpdate(input);

            return Ok(input);
        }


        [HttpPost]
        public IHttpActionResult Delete(GetProductById_Input input)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }


            dal.ProductDelete(input);

            return Ok();
        }



        [HttpGet]
        
        public IHttpActionResult GetAllProduct()
        {
            ProductFilter_Input input = new ProductFilter_Input()
            {
                ProductId = 0,
                ProductName = ""

            };

            List<GetProduct_ResultSet> products = new List<GetProduct_ResultSet>();

         products = dal.GetAllProduct();

           

            return Ok(products);
        }


        [HttpGet]
        public IHttpActionResult GetProductById(int productId)
        {

            GetProductById_Input input = new GetProductById_Input()
            {
                ProductId=productId
            };


            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }


            GetProduct_ResultSet  product=dal.GetProductById(input);

            return Ok(product);
        }




        [HttpPost]

        public IHttpActionResult ConsumerSave(Consumer_Input input) {

            input.SoldDate = DateTime.Now.Date;

            dal.ConsumerSave(input);

            return Ok(input);
        }


        [HttpPost]

        public IHttpActionResult ConsumerUpdate(ConsumingUserUpdate_Input input)
        {

            dal.ConsumerUpdate(input);

            return Ok(input);
        }



        [HttpPost]

        public IHttpActionResult ConsumerDelete(GetConsumerById_Input input)
        {

            dal.ConsumerDelete(input);

            return Ok(input);
        }


        [HttpGet]

        public IHttpActionResult GetConsumerById(GetConsumerById_Input input)
        {

            GetConsumer_ResultSet consumer =dal.GetConsumerById(input);

            return Ok(consumer);
        }


        [HttpGet]

        public IHttpActionResult GetAllConsumer()
        {

           List<GetConsumer_ResultSet> consumers = dal.GetAllConsumers();

            return Ok(consumers);
        }


    }
}
