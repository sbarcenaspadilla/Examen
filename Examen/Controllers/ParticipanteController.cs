using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System.Threading.Tasks;

namespace Examen.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class ParticipanteController : ControllerBase
    {
        private readonly AppDbContext _context;

        public ParticipanteController(AppDbContext context)
        {
            _context = context;
        }

        [HttpPost]
        public async Task<IActionResult> CreateParticipante([FromBody] Participante participante)
        {
            if (ModelState.IsValid)
            {
                _context.Participantes.Add(participante);
                await _context.SaveChangesAsync();
                return Ok(participante);
            }

            return BadRequest(ModelState);
        }
        [HttpGet]
        public async Task<IActionResult> GetParticipantes()
        {
            var participantes = await _context.Participantes.ToListAsync();
            return Ok(participantes);
        }

    }
}
