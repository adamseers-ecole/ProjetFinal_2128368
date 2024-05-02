using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using ProjetFinal_2128368.Data;
using ProjetFinal_2128368.Models;

namespace ProjetFinal_2128368.Controllers
{
    public class InstrumentsController : Controller
    {
        private readonly BD_ProjetFinalContext _context;

        public InstrumentsController(BD_ProjetFinalContext context)
        {
            _context = context;
        }

        // GET: Instruments
        public async Task<IActionResult> Index()
        {
            var bD_ProjetFinalContext = _context.Instruments.Include(i => i.Fabricant).Include(i => i.Materiau);
            return View(await bD_ProjetFinalContext.ToListAsync());
        }

        // GET: Instruments/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null || _context.Instruments == null)
            {
                return NotFound();
            }

            var instrument = await _context.Instruments
                .Include(i => i.Fabricant)
                .Include(i => i.Materiau)
                .FirstOrDefaultAsync(m => m.InstrumentId == id);
            if (instrument == null)
            {
                return NotFound();
            }

            return View(instrument);
        }

        // GET: Instruments/Create
        public IActionResult Create()
        {
            ViewData["FabricantId"] = new SelectList(_context.Fabricants, "FabricantId", "FabricantId");
            ViewData["MateriauId"] = new SelectList(_context.Materiaus, "MateriauId", "MateriauId");
            return View();
        }

        // POST: Instruments/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("InstrumentId,FabricantId,Modele,Nom,PrixMoy,DateInvention,MateriauId")] Instrument instrument)
        {
            if (ModelState.IsValid)
            {
                _context.Add(instrument);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            ViewData["FabricantId"] = new SelectList(_context.Fabricants, "FabricantId", "FabricantId", instrument.FabricantId);
            ViewData["MateriauId"] = new SelectList(_context.Materiaus, "MateriauId", "MateriauId", instrument.MateriauId);
            return View(instrument);
        }

        // GET: Instruments/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null || _context.Instruments == null)
            {
                return NotFound();
            }

            var instrument = await _context.Instruments.FindAsync(id);
            if (instrument == null)
            {
                return NotFound();
            }
            ViewData["FabricantId"] = new SelectList(_context.Fabricants, "FabricantId", "FabricantId", instrument.FabricantId);
            ViewData["MateriauId"] = new SelectList(_context.Materiaus, "MateriauId", "MateriauId", instrument.MateriauId);
            return View(instrument);
        }

        // POST: Instruments/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("InstrumentId,FabricantId,Modele,Nom,PrixMoy,DateInvention,MateriauId")] Instrument instrument)
        {
            if (id != instrument.InstrumentId)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(instrument);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!InstrumentExists(instrument.InstrumentId))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index));
            }
            ViewData["FabricantId"] = new SelectList(_context.Fabricants, "FabricantId", "FabricantId", instrument.FabricantId);
            ViewData["MateriauId"] = new SelectList(_context.Materiaus, "MateriauId", "MateriauId", instrument.MateriauId);
            return View(instrument);
        }

        // GET: Instruments/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null || _context.Instruments == null)
            {
                return NotFound();
            }

            var instrument = await _context.Instruments
                .Include(i => i.Fabricant)
                .Include(i => i.Materiau)
                .FirstOrDefaultAsync(m => m.InstrumentId == id);
            if (instrument == null)
            {
                return NotFound();
            }

            return View(instrument);
        }

        // POST: Instruments/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            if (_context.Instruments == null)
            {
                return Problem("Entity set 'BD_ProjetFinalContext.Instruments'  is null.");
            }
            var instrument = await _context.Instruments.FindAsync(id);
            if (instrument != null)
            {
                _context.Instruments.Remove(instrument);
            }
            
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool InstrumentExists(int id)
        {
          return (_context.Instruments?.Any(e => e.InstrumentId == id)).GetValueOrDefault();
        }
    }
}
