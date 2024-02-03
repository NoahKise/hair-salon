using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using HairSalon.Models;
using System;

namespace HairSalon.Controllers
{
    public class HomeController : Controller
    {
        private readonly HairSalonContext _db;

        public HomeController(HairSalonContext db)
        {
            _db = db;
        }

        [HttpGet("/")]
        public ActionResult Index()
        {
            return View();
        }

    }
}