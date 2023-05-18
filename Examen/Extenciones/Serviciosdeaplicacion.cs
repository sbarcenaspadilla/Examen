using Microsoft.Extensions.Diagnostics.HealthChecks;
using Microsoft.Extensions.Options;

namespace Examen.Extenciones
{
    public static class Serviciosdeaplicacion
    {

        public static void configuracionCors(this IServiceCollection services) =>

            services.AddCors(options =>
            {
                options.AddPolicy("CorsPolicy", builder =>
                builder.AllowAnyOrigin() 
                .AllowAnyMethod()       
                .AllowAnyHeader()       
                );
                options.AddPolicy("Policy1",
                policy =>
                {
                    policy.WithOrigins("http://localhost:3000");
                });
            });
    }
} 
