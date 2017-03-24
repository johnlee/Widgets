using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Web.Mvc;
using Widgets.Models;

namespace Widgets.Controllers.Web
{
    public class ProductsController : Controller
    {
        // GET: Products
        public ActionResult Index()
        {
            var products = new List<Product>();
            using (var client = new HttpClient())
            {
                client.BaseAddress = new Uri(string.Format("{0}://{1}{2}", Request.Url.Scheme, Request.Url.Authority, Url.Content("~")));
                client.DefaultRequestHeaders.Accept.Clear();
                client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
                var response = client.GetAsync("api/Products").Result;
                if (response.IsSuccessStatusCode)
                {
                    products = response.Content.ReadAsAsync<List<Product>>().Result;
                }
            }
            return View(products);
        }
    }
}