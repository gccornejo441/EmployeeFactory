using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ManageEmployees.Controllers
{
    public class ProjectTrackerController : Controller
    {
        // GET: ProjectTracker
        public ActionResult Index()
        {
            return View();
        }
    }
}