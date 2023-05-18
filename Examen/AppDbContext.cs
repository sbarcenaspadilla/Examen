using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace Examen.Controllers

{
    public class AppDbContext : DbContext

    {
        public AppDbContext(DbContextOptions<AppDbContext> options) : base(options)
        {
        }

        public DbSet<Participante> Participantes { get; set; }
    }

}

