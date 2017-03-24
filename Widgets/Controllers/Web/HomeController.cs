using System.Web.Mvc;

namespace Widgets.Controllers.Web
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            ViewBag.Title = "Home Page";

            return View();
        }
    }
}
