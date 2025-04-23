using Fhi.KompetanseUtvikling.Linq.Fotball.Model;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;

namespace Fhi.KompetanseUtvikling.Linq.Fotball.DataAccess;

public class FootBallContext : DbContext
{
    public FootBallContext(DbContextOptions<FootBallContext> options) : base(options)
    {
    }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
     => optionsBuilder.LogTo(Console.WriteLine, new[] { DbLoggerCategory.Database.Command.Name }, LogLevel.Information);

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<ScoreResult>(entity =>
        {
            entity.ToTable("E02017", "dbo");
            entity.HasKey(e=>e.Id);
            entity.HasData(LoadFootBallData());
        });
    }

    private List<ScoreResult> LoadFootBallData()
    {
        var lines = File.ReadLines("Fotball2017.csv");
        int id = 1;
        var scoreResults = lines.Skip(1).Select(line =>
        {
            var split = line.Split(';');
            return new ScoreResult()
            {
                Id = id++,
                Date = DateTime.Parse(split[0]),
                HomeTeamName = split[1],
                AwayTeamName = split[2],
                HG = int.Parse(split[3]),
                AG = int.Parse(split[4]),
                City = CityTeams.TeamToCity(split[1])
            };
        }).ToList();

        return scoreResults;
    }
}