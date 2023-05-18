using Microsoft.Data.SqlClient;
using Microsoft.Extensions.Configuration;
using System;

namespace Examen
{
   
    public class DatabaseTester
    {
        private readonly string connectionString;

        public DatabaseTester(IConfiguration configuration)
        {
            connectionString = configuration.GetConnectionString("DefaultConnection");
        }

        public bool TestConnection()
        {
            try
            {
                using (var connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    return true;
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Error al probar la conexión a la base de datos: {ex.Message}");
                return false;
            }
        }
    }
}

