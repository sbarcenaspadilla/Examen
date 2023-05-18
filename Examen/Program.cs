using Examen;
using Examen.Controllers;
using Examen.Extenciones;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.SqlServer;
using System.Net;

var builder = WebApplication.CreateBuilder(args);
builder.Services.configuracionCors();


var configuration = new ConfigurationBuilder()
    .SetBasePath(Directory.GetCurrentDirectory())
    .AddJsonFile("appsettings.json")
    .Build();

// Crear una instancia de DatabaseTester y probar la conexión
var databaseTester = new DatabaseTester(configuration);
bool isConnected = databaseTester.TestConnection();

Console.WriteLine($"La conexión a la base de datos es exitosa: {isConnected}");



// Add services to the container.
builder.Services.AddControllers();
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();

// Configure the database connection
builder.Services.AddDbContext<AppDbContext>(options => options.UseSqlServer(builder.Configuration.GetConnectionString("DefaultConnection")));


var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}
app.UseCors("CorsPolicy");
app.UseCors("Policy1");

app.UseAuthorization();

app.MapControllers();

app.Run();
