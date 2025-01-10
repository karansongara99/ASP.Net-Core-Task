using Microsoft.AspNetCore.Mvc;

namespace ProductPractice.Controllers
{
    public class ProductController : Controller
    {
        public IActionResult ProductList()
        {
            return View();
        }
        public IActionResult AddList()
        {
            return View();
        }
    }
}
