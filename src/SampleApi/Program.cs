var builder = WebApplication.CreateBuilder(args);
builder.Services.AddControllers();

var app = builder.Build();

app.MapGet("/", () => "SampleApi is running");
app.MapGet("/health", () => Results.Ok(new { status = "healthy" }));
app.MapGet("/api/greeting/{name}", (string name) => Results.Ok(new { message = $"Hello, {name}!" }));

app.Run();

// Exposed for the test project.
public partial class Program { }
