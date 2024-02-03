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
  public class StylistsController : Controller
  {
    private readonly HairSalonContext _db;

    public StylistsController(HairSalonContext db)
    {
      _db = db;
    }
    public async Task<IActionResult> Index(string searchString)
    {
      IQueryable<Stylist> model = from m in _db.Stylists
                                     select m;

      if (!String.IsNullOrEmpty(searchString))
      {
        model = model.Where(s => s.Name!.Contains(searchString));
      }
      return View(await model.OrderBy(e => e.Name).ToListAsync());
    }
    public ActionResult Create()
    {
      return View();
    }
    [HttpPost]
    public ActionResult Create(Stylist stylist)
    {
      _db.Stylists.Add(stylist);
      _db.SaveChanges();
      return RedirectToAction("Index");
    }
    public ActionResult Edit(int id)
    {
      Stylist thisStylist = _db.Stylists.FirstOrDefault(stylist => stylist.StylistId == id);
      return View(thisStylist);
    }
    [HttpPost]
    public ActionResult Edit(Stylist stylist)
    {
      _db.Stylists.Update(stylist);
      _db.SaveChanges();
      return RedirectToAction("Index");
    }
    public ActionResult Delete(int id)
    {
      Stylist thisStylist = _db.Stylists.FirstOrDefault(stylist => stylist.StylistId == id);
      return View(thisStylist);
    }
    [HttpPost, ActionName("Delete")]
    public ActionResult DeleteConfirmed(int id)
    {
      Stylist thisStylist = _db.Stylists.FirstOrDefault(stylist => stylist.StylistId == id);
      _db.Stylists.Remove(thisStylist);
      _db.SaveChanges();
      return RedirectToAction("Index");
    }

    public ActionResult Details(int id, string searchString)
    {
      Stylist thisStylist = _db.Stylists
          .Include(stylist => stylist.Clients.OrderBy(e => e.Name))
          .FirstOrDefault(stylist => stylist.StylistId == id);

      if (!String.IsNullOrEmpty(searchString))
      {
        thisStylist.Clients = thisStylist.Clients.Where(client => client.Name.Contains(searchString)).OrderBy(e => e.Name).ToList();
      }
      ViewBag.CollectionId = id;
      ViewBag.SearchString = searchString;

      return View(thisStylist);
    }


  }
}