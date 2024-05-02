using Microsoft.EntityFrameworkCore;
using ProjetFinal_2128368.Data;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.
builder.Services.AddRazorPages();

builder.Services.AddDbContext<BD_ProjetFinalContext>(
    options => options.UseSqlServer(builder.Configuration.GetConnectionString("BD_ProjetFinal")));

var app = builder.Build();

// Configure the HTTP request pipeline.
if (!app.Environment.IsDevelopment())
{
    app.UseExceptionHandler("/Error");
}
app.UseStaticFiles();

app.UseRouting();

app.UseAuthorization();

app.UseEndpoints(endpoints =>
{
    endpoints.MapControllerRoute(
        name: "default",
        pattern: "{controller=Instruments}/{action=Index}/{id?}"
        );
});

app.MapRazorPages();

app.Run();
