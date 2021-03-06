﻿using System.Collections.Generic;
using System.Linq;
using System.Web.Http;
using Widgets.Data;
using Widgets.Models;

namespace Widgets.Controllers.Api
{
    public class OrdersController : BaseController
    {
        // Constructor captures the repository from dependency injection
        public OrdersController(IRepository repository) : base(repository) { }

        // GET: api/Orders
        public List<PurchaseOrder> Get()
        {
            var orders = Repository.Orders.GetAllOrders();
            return orders.Select(x => Factory.Create(x)).ToList();
        }

        // GET: api/Orders/{id}
        public IHttpActionResult Get(int id)
        {
            var order = Repository.Orders.GetOrderById(id);
            if (order != null)
            {
                return Ok(Factory.Create(order));
            }
            return NotFound();
        }

        // POST: api/Orders
        public IHttpActionResult Post(PurchaseOrder order)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (!Repository.Orders.CreateOrder(Factory.Create(order)))
            {
                return InternalServerError();
            }

            return Ok();
        }

        // PUT: api/Orders
        public IHttpActionResult Put(PurchaseOrder order)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (!Repository.Orders.UpdateOrder(Factory.Create(order)))
            {
                return InternalServerError();
            }

            return Ok();
        }

        // DELETE: api/Orders
        public IHttpActionResult Delete(PurchaseOrder order)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (!Repository.Orders.DeleteOrder(Factory.Create(order)))
            {
                return InternalServerError();
            }

            return Ok();
        }
    }
}
