using Microsoft.AspNetCore.Mvc;
using HairSalon.Models;
using System.Collections.Generic;
using System.Linq;
using Microsoft.EntityFrameworkCore;
using Microsoft.AspNetCore.Mvc.Rendering;
using System;
using System.Threading.Tasks;

namespace HairSalon.Controllers
{
    public class ClientsController : Controller
    {
        private readonly HairSalonContext _db;
        public ClientsController(HairSalonContext db)
        {
            _db = db;
        }


        public async Task<IActionResult> Index(string searchString)
        {
            IQueryable<Client> model = from m in _db.Clients.Include(client => client.Stylist)
                                       select m;

            if (!String.IsNullOrEmpty(searchString))
            {
                model = model.Where(s => s.Name!.Contains(searchString));
                ViewBag.Title = $"{searchString}";
            }
            ViewBag.Title = "All Clients";
            return View(await model.OrderBy(e => e.Name).ToListAsync());
        }

        [HttpGet("/clients/create/")]
        public ActionResult Create(int selectedStylist)
        {
            ViewBag.SelectedStylist = selectedStylist;
            ViewBag.StylistId = new SelectList(_db.Stylists, "StylistId", "Name");
            return View();
        }

        [HttpPost]
        public ActionResult Create(Client client)
        {

            if (client.StylistId == 0)
            {
                return RedirectToAction("Create");
            }

            _db.Clients.Add(client);
            _db.SaveChanges();
            return RedirectToAction("Index");
        }
        public ActionResult Details(int id)
        {
            Client thisClient = _db.Clients
                                .Include(client => client.Stylist)
                                .FirstOrDefault(client => client.ClientId == id);
            return View(thisClient);
        }

        public ActionResult Edit(int id)
        {
            Client thisClient = _db.Clients.FirstOrDefault(client => client.ClientId == id);
            ViewBag.StylistId = new SelectList(_db.Stylists, "StylistId", "Name");
            return View(thisClient);
        }

        [HttpPost]
        public ActionResult Edit(Client client)
        {
            _db.Clients.Update(client);
            _db.SaveChanges();
            return RedirectToAction("Index");
        }

        public ActionResult Delete(int id)
        {
            Client thisClient = _db.Clients.FirstOrDefault(client => client.ClientId == id);
            return View(thisClient);
        }

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            Client thisClient = _db.Clients.FirstOrDefault(client => client.ClientId == id);
            _db.Clients.Remove(thisClient);
            _db.SaveChanges();
            return RedirectToAction("Index");
        }
    }
}