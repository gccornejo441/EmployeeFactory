using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.Encodings.Web;
using System.Web;
using System.Web.Mvc;
using System.Web.Util;

namespace ManageEmployees.Controllers
{
    public class HelloWorldController : Controller
    {
        
        // GET: HelloWorld
        public ActionResult Index()
        {
            View();
            // Build the JavaScript code to be returned
            var jsCode = $"alert('My data is');";

            // Use the Controller.Javascript() method to create a JavaScriptResult object
            return JavaScript(jsCode);

        }

        

        //
        // GET: /HelloWorld/Welcome
        public string Welcome(string name, int numTimes = 1)
        {
        
            return HtmlEncoder.Default.Encode($"Hello {name}, NumTimes is: {numTimes}");
        }
    }
}