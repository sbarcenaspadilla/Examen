using System.ComponentModel.DataAnnotations;

namespace Examen.Controllers
{
    public class Participante
    {
        [Key]
        public int Id { get; set; }

        public string Compania { get; set; }

        public int Cedula { get; set; }

        public string Nombre { get; set; }

        public string Titulo { get; set; }

        public string Correo { get; set; }

        public int Telefono { get; set; }
    }
}
