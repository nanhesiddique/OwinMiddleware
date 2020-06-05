using SatyamSirWork1.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SatyamSirWork1.Controllers
{
    public class CustomerController : Controller
    {
        dbSatyamSirEntities db = new dbSatyamSirEntities();
        // GET: Customer

        [Authorize]
        [HttpGet]
        public ActionResult Index()
        {
            return View();
        }
        [Authorize]
        [HttpPost]
        public ActionResult Index(tbl_customer cus)
        {
            tbl_customer cc = new tbl_customer();
            cc.cust_name = cus.cust_name;
            cc.cust_email = cus.cust_email;
            cc.cust_age = cus.cust_age;
            cc.cust_contact = cus.cust_contact;
            cc.cust_address = cus.cust_address;
            cc.cust_pincode = cus.cust_pincode;
            db.tbl_customer.Add(cc);
            db.SaveChanges();
            return View("CustomerList");
        }
        public ActionResult CustomerList()
        {
            return View();
        }
        public ActionResult GetCustomerList()
        {

                var custlist = db.tbl_customer.ToList<tbl_customer>();
                return Json(new { data = custlist }, JsonRequestBehavior.AllowGet);
            
        }
    }
}