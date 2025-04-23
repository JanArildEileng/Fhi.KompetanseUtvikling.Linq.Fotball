using DotNet.Testcontainers.Containers;
using Microsoft.EntityFrameworkCore;
using Testcontainers.MsSql;
using Fhi.KompetanseUtvikling.Linq.Fotball.DataAccess;
using Fhi.KompetanseUtvikling.Linq.Fotball.Model;

namespace Fhi.KompetanseUtvikling.Linq.Fotball.Test;

public class TestsBase
{
    const string databaseName = "LinqFootball";
    private MsSqlContainer MsSqlContainer { get; init; } = new MsSqlBuilder()
        .WithImage("mcr.microsoft.com/mssql/server:2022-CU13-ubuntu-22.04")
        .Build();

    private string ConnectionString => MsSqlContainer.GetConnectionString().Replace("Database=master;", $"Database={databaseName};");

    protected FootBallContext footBallContext;

    [OneTimeSetUp]
    public async Task OneTimeSetUp()
    {
        try
        {
            await MsSqlContainer.StartAsync();
        }
        catch (Exception e)
        {
            Console.WriteLine(e);
            throw;
        }

        var optionsBuilder = new DbContextOptionsBuilder<FootBallContext>()
        .UseSqlServer(ConnectionString);

        footBallContext = new FootBallContext(optionsBuilder.Options);
        footBallContext.Database.EnsureCreated();
        ScoreResultsAsList = footBallContext.Set<ScoreResult>().ToList();

    }

    [OneTimeTearDown]
    public async Task OneTimeTearDown()
    {

        footBallContext.Dispose();
        if (MsSqlContainer.State == TestcontainersStates.Running)
        {
            await MsSqlContainer.DisposeAsync();
        }
    }

    [SetUp]
    public async Task Setup()
    {
    }

    //public List<ScoreResult>  ScoreResultsAsList =>footBallContext.Set<ScoreResult>().ToList();
    public List<ScoreResult>  ScoreResultsAsList {  get; set; }

    public IQueryable<ScoreResult>  ScoreResultsAsQuery =>footBallContext.Set<ScoreResult>();

}


