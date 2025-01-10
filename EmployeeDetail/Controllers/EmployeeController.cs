using Microsoft.AspNetCore.Mvc;

namespace EmployeePractice.Controllers
{
    public class EmployeeController : Controller
    {
        public IActionResult EmployeeList()
        {
            return View();
        }
        public IActionResult AddList()
        {
            return View();
        }
    }
}
