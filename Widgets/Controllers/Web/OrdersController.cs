using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Web.Mvc;
using Widgets.Models;

namespace Widgets.Controllers.Web
{
    public class OrdersController : Controller
    {
        // GET: Orders
        public ActionResult Index()
        {
            var orders = new List<PurchaseOrder>();
            using (var client = new HttpClient())
            {
                client.BaseAddress = new Uri(string.Format("{0}://{1}{2}", Request.Url.Scheme, Request.Url.Authority, Url.Content("~")));
                client.DefaultRequestHeaders.Accept.Clear();
                client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
                var response = client.GetAsync("api/Orders").Result;
                if (response.IsSuccessStatusCode)
                {
                    orders = response.Content.ReadAsAsync<List<PurchaseOrder>>().Result;
                }
            }
            return View(orders);
        }
    }
}