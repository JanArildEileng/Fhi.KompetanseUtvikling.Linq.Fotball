using Fhi.KompetanseUtvikling.Linq.Fotball.Model;

namespace Fhi.KompetanseUtvikling.Linq.Fotball.Test;

public class LinqTester : TestsBase
{
    //Les alle ScoreResult
    [Test]
    public void Test00_Antall_ScoreResult()
    {
        int count = footBallContext.Set<ScoreResult>().Count();
        Assert.That(count, Is.EqualTo(380));
    }

    //Finn antall ulike lag i ligaen
    [Test]
    public void Test01_Finn_Antall_Ulike_Lag()
    {
        var counts = footBallContext.Set<ScoreResult>().Select(e => e.HomeTeamName).Distinct().Count();
        Assert.That(counts, Is.EqualTo(20));
    }

    //Finn antall kamper spilt pr År/Mnd
    [Test]
    public void Test03_Finn_Antall_Kamper_Spilt_pr_AarMnd()
    {
        var results = footBallContext.Set<ScoreResult>()
             .GroupBy(e => new { e.Date.Year, e.Date.Month })
             .OrderBy(g => g.Key.Year).ThenBy(g => g.Key.Month)
             .Select(g =>
             new
             {
                 g.Key.Year,
                 g.Key.Month,
                 Antall = g.Count()
             })
             .ToList();

          //assert
        Assert.That(results.Count, Is.EqualTo(10));
        Assert.That(results.ElementAt(0).Year, Is.EqualTo(2017));
        Assert.That(results.ElementAt(0).Month, Is.EqualTo(8));
        Assert.That(results.ElementAt(0).Antall, Is.EqualTo(30));

        foreach (var item in results)
        {
            Console.WriteLine($"{item.Year}/{item.Month} {item.Antall}");
        }

    }

    //4a Lag ferdigspilt tabell ( basert kun på poeng )
    [Test]
    public void Test04a_Lag_Ferdigspilt_Tabell()
    {
        var results = footBallContext.Set<ScoreResult>()
            .Select(e => new { Team = e.HomeTeamName, Points =  e.HG > e.AG ? 3 : e.HG == e.AG ? 1 : 0})
            
            .Concat(
                 footBallContext.Set<ScoreResult>()
                .Select(e => new { Team = e.AwayTeamName, Points = e.HG < e.AG ? 3 : e.HG == e.AG ? 1 : 0})
            )
         .GroupBy(e => e.Team)
         .Select(g => new { Team = g.Key, TotalPoints = g.Sum(s => s.Points) })
         .OrderByDescending(e => e.TotalPoints)
         .ToList();

          //assert
        Assert.That(results.Count, Is.EqualTo(20));
        Assert.That(results.ElementAt(0).Team, Is.EqualTo("Man City"));
        Assert.That(results.ElementAt(0).TotalPoints, Is.EqualTo(100));

        foreach (var item in results)
        {
            Console.WriteLine($"{item.Team} {item.TotalPoints}");
        }
    }


    //5: List alle kamper, partisjonert på Team , og sortert på result 
    //( fra beste til verste) (basert på målforskjell i kampen , deretter antall scorete mål ( jo flere jo bedre..))
    [Test]
    public void Test05_List_Alle_kamper_Partisjonert_paa_Team()
    {
   
        var results = footBallContext.Set<ScoreResult>()
            .OrderBy(e => e.HomeTeamName)
            .ThenByDescending(e => e.HG - e.AG)
            .ThenByDescending(e => e.HG)
            .ToList();

          //assert

        Assert.That(results.Count, Is.EqualTo(380));
        Assert.That(results.ElementAt(0).HomeTeamName, Is.EqualTo("Arsenal"));
        Assert.That(results.ElementAt(0).AwayTeamName, Is.EqualTo("Huddersfield"));
        Assert.That(results.ElementAt(15).AwayTeamName, Is.EqualTo("Liverpool"));

        foreach (var item in results)
        {
            Console.WriteLine($"{item.HomeTeamName} {item.AwayTeamName}  {item.HG}-{item.AG}");
        }
    }

    //6 Lag oversikt over uavgjorte kamper ( gruppert på team ), sortert etter antall ( fra max til min)
    [Test]
    public void Test06_Lag_oversikt_over_uavgjorte_kamper()
    {

        var filtered = footBallContext.Set<ScoreResult>()
            .Where(e => e.HG == e.AG)
            .Select(e=>new {e.HomeTeamName,e.AwayTeamName })
            .ToList();

        var results = filtered
                     .Select(e => e.HomeTeamName)
                     .Concat(filtered.Select(e => e.AwayTeamName))
                     .GroupBy(e => e)
                     .Select(s => new
                     {
                         TeamName = s.Key,
                         Count = s.Count()
                     })
                     .OrderByDescending(e => e.Count);

        //assert
        Assert.That(results.Count, Is.EqualTo(20));
        Assert.That(results.ElementAt(0).TeamName, Is.EqualTo("Southampton"));
        Assert.That(results.ElementAt(0).Count, Is.EqualTo(15));
        Assert.That(results.ElementAt(19).TeamName, Is.EqualTo("Man City"));
        Assert.That(results.ElementAt(19).Count, Is.EqualTo(4));

        foreach (var item in results)
        {
            Console.WriteLine($"{item.TeamName} {item.Count}");
        }
    }

    //7a) Hvilket team tapte fleste hjemmpekamper på rad?
    [Test]
    public void Test07a_Hvilket_Team_Tapte_Fleste_Hjemmpekamper_Paa_Rad()
    {
        var results = footBallContext.Set<ScoreResult>()
            .GroupBy(e => e.HomeTeamName).ToList()
            .Select(g => new
            {
                TeamName = g.Key,
                Max = g.OrderBy(e => e.Date).Aggregate(new MaxData(), (MaxData total, ScoreResult next) =>
                {
                    if (next.HG < next.AG)
                    {
                        total.Current++;
                        if (total.Current > total.Max)
                            total.Max = total.Current;
                    }
                    else
                        total.Current = 0;

                    return total;

                }).Max

            })
            .OrderByDescending(e => e.Max)
            .First();

        //assert
        Assert.That(results.TeamName, Is.EqualTo("Newcastle"));
        Assert.That(results.Max, Is.EqualTo(5));
        Console.WriteLine($"{results.TeamName} {results.Max}");
    }

    //7b) Hvilke team tapte minst 3 hjemmpekamper på rad?
    [Test]
    public void Test07b_Hvilke_team_tapte_minst_3_hjemmpekamper_på_rad()
    {
        var results = footBallContext.Set<ScoreResult>()
            .GroupBy(e => e.HomeTeamName).ToList()
            .Select(g => new
            {
                TeamName = g.Key,
                Max = g.OrderBy(e => e.Date).Aggregate(new MaxData(), (MaxData total, ScoreResult next) =>
                {
                    if (next.HG < next.AG)
                    {
                        total.Current++;
                        if (total.Current > total.Max)
                            total.Max = total.Current;
                    }
                    else
                        total.Current = 0;

                    return total;

                }).Max

            })
            .Where(e => e.Max >= 3)
            .OrderByDescending(e => e.Max);

        //assert
        Assert.That(results.Count, Is.EqualTo(6));
        Assert.That(results.ElementAt(1).TeamName, Is.EqualTo("West Brom"));

        foreach (var item in results)
        {
            Console.WriteLine($"{item.TeamName} {item.Max}");
        }

    }

    //7c) Hvilke team hadde minst 2 perioder/sekevenser med 2 hjemmtap på rad?
    [Test]
    public void Test07c_Hvilke_team_hadde_minst_2_perioder_sekevenser_med_2_hjemmtap_på_rad()
    {
        var results = footBallContext.Set<ScoreResult>()
            .GroupBy(e => e.HomeTeamName).ToList()
            .Select(g => new
            {
                TeamName = g.Key,
                Counts = g.OrderBy(e => e.Date).Aggregate(new MaxDataCounts(), (MaxDataCounts total, ScoreResult next) =>
                {
                    if (next.HG < next.AG)
                    {
                        total.Current++;
                        if (total.Current > total.Max)
                            total.Max = total.Current;
                        if (total.Current == 2)
                            total.Counts++;

                    }
                    else
                        total.Current = 0;

                    return total;

                }).Counts

            })
            .Where(e => e.Counts >= 2)
            .OrderByDescending(e => e.Counts);

        //assert
        Assert.That(results.Count, Is.EqualTo(4));
        Assert.That(results.Select(e=>e.TeamName).Contains("Swansea"), Is.True);
        foreach (var item in results)
        {
            Console.WriteLine($"{item.TeamName} {item.Counts}");
        }
    }

    //9: Ranksjer(Rank) ( samme antall poeng, samme rank) teamene etter antall poeng i hjemmekamp fom 6 tom 10
    [Test]
    public void Test09_Ranksjere_Team()
    {
        var results = footBallContext.Set<ScoreResult>()
               .GroupBy(e => e.HomeTeamName).ToList()
               .Select(g => new
               {
                   TeamName = g.Key,
                   Points = g.OrderBy(e => e.Date).Skip(5).Take(5).Aggregate(0, (total, next) =>
                   {
                       if (next.HG < next.AG) return total;
                       if (next.HG == next.AG) return total + 1;
                       return total + 3;
                   })
               })
               .OrderByDescending(e => e.Points)
               .Select(e =>
               new
               {
                   e.TeamName,
                   e.Points,
                   Rank = Ranker.Rank(e.Points)

               }).ToList();


          //assert
        var element = (results.Where(e => e.TeamName.Equals("Chelsea")).First());
        Assert.That(element.Rank, Is.EqualTo(1));
        element = (results.Where(e => e.TeamName.Equals("Liverpool")).First());
        Assert.That(element.Rank, Is.EqualTo(7));

        foreach (var item in results)
        {
            Console.WriteLine($"{item.TeamName} {item.Points}  {item.Rank}");
        }
    }

    //10: Lag liste (CTE) over team i London
    [Test]
    public void Test10_Teams_In_London()
    {
        var teamNames = footBallContext.Set<ScoreResult>()
             .Where(e => e.City == "London")
            .Select(e => e.HomeTeamName)
            .Distinct()
            .ToList();

          //assert
        Assert.That(teamNames.Count, Is.EqualTo(6));
        Assert.That(teamNames.Contains("Arsenal"), Is.True);
    }


    //11a: Lag tabell , der kun London-lag inngår  ( altså kun kamper mellom London-lag)
    [Test]
    public void Test11a_London_Tabell()
    {
        IQueryable<ScoreResult> londonMatches = footBallContext.Set<ScoreResult>()
              .Where(e => CityTeams.London.Contains(e.HomeTeamName))
              .Where(e => CityTeams.London.Contains(e.AwayTeamName));


        var results = londonMatches
                 .Select(e => new { Team = e.HomeTeamName, Points = e.HG > e.AG ? 3 : e.HG == e.AG ? 1 : 0 })
            .Concat(
                 londonMatches
                .Select(e => new { Team = e.AwayTeamName, Points = e.HG < e.AG ? 3 : e.HG == e.AG ? 1 : 0 })
            )
         .GroupBy(e => e.Team)
         .Select(g => new { Team = g.Key, TotalPoints = g.Sum(s => s.Points) })
         .OrderByDescending(e => e.TotalPoints)
         .ToList();

          //assert
        Assert.That(results.Count, Is.EqualTo(6));
        Assert.That(results.ElementAt(0).Team, Is.EqualTo("Tottenham"));
        Assert.That(results.ElementAt(0).TotalPoints, Is.EqualTo(20));

        foreach (var item in results)
        {
            Console.WriteLine($"{item.Team} {item.TotalPoints}");
        }

    }

    //11b: Utvid med Liverpool og Manchester... ( en slags Super League altså...!!)
    [Test]
    public void Test11b_SuperLiga_Tabell()
    {
        var bigCities = CityTeams.London.Union(CityTeams.Liverpool).Union(CityTeams.Manchester);

        IQueryable<ScoreResult> cityMatches = footBallContext.Set<ScoreResult>()
              .Where(e => bigCities.Contains(e.HomeTeamName))
              .Where(e => bigCities.Contains(e.AwayTeamName));

        var results = cityMatches
                 .Select(e => new { Team = e.HomeTeamName, Points = e.HG > e.AG ? 3 : e.HG == e.AG ? 1 : 0 })
            .Concat(
                 cityMatches
                .Select(e => new { Team = e.AwayTeamName, Points = e.HG < e.AG ? 3 : e.HG == e.AG ? 1 : 0 })
            )
         .GroupBy(e => e.Team)
         .Select(g => new { Team = g.Key, TotalPoints = g.Sum(s => s.Points) })
         .OrderByDescending(e => e.TotalPoints)
         .ToList();

          //assert
        Assert.That(results.Count, Is.EqualTo(10));
        Assert.That(results.ElementAt(0).Team, Is.EqualTo("Man City"));
        Assert.That(results.ElementAt(0).TotalPoints, Is.EqualTo(44));

        foreach (var item in results)
        {
            Console.WriteLine($"{item.Team} {item.TotalPoints}");
        }

    }


    //11c: Hvordan mange poeng tar hver by i den ny 'Super League' (fra mest til minst poeng)
    [Test]
    public void Test11c_CityLiga_Tabell()
    {
        var bigCities = CityTeams.London.Union(CityTeams.Liverpool).Union(CityTeams.Manchester);

        IQueryable<ScoreResult> cityMatches = footBallContext.Set<ScoreResult>()
              .Where(e => bigCities.Contains(e.HomeTeamName))
              .Where(e => bigCities.Contains(e.AwayTeamName));

        var results1 = cityMatches
                 .Select(e => new { Team = e.HomeTeamName, Points = e.HG > e.AG ? 3 : e.HG == e.AG ? 1 : 0 })
            .Concat(
                 cityMatches
                .Select(e => new { Team = e.AwayTeamName, Points = e.HG < e.AG ? 3 : e.HG == e.AG ? 1 : 0 })
            )
         .GroupBy(e => e.Team)
         .Select(g => new { Team = g.Key, TotalPoints = g.Sum(s => s.Points) })
         .OrderByDescending(e => e.TotalPoints).ToList();


        var results = results1.GroupBy(e => CityTeams.TeamToCity(e.Team))
              .Select(g => new { Team = g.Key, TotalPoints = g.Sum(s => s.TotalPoints) })
              .OrderByDescending(e => e.TotalPoints);


          //assert
        Assert.That(results.Count, Is.EqualTo(3));
        Assert.That(results.ElementAt(0).Team, Is.EqualTo("London"));
        Assert.That(results.ElementAt(0).TotalPoints, Is.EqualTo(122));

        foreach (var item in results)
        {
            Console.WriteLine($"{item.Team} {item.TotalPoints}");
        }

    }

    //12:  Lag liga der hjemme- og borte kamp teller som en kamp... ( totalscore begge kamper)... Hvordan blir denne tabellen (
    [Test]
    public void Test12_HomeandAway_ligaTabell()
    {
        IQueryable<ScoreResult> matches = footBallContext.Set<ScoreResult>();

        var results = matches.Join(matches,
            a => new { A = a.HomeTeamName, B = a.AwayTeamName },
            b => new { A = b.AwayTeamName, B = b.HomeTeamName },
            (a, b) => new { TeamName = a.HomeTeamName, T1goals = a.HG + b.AG, T2goals = b.HG + a.AG })
        .Select(e => new
        {
            e.TeamName,
            Points = e.T1goals > e.T2goals ? 3 : e.T1goals == e.T2goals ? 1 : 0
        })
        .GroupBy(e => e.TeamName)
        .Select(g => new { Team = g.Key, TotalPoints = g.Sum(s => s.Points) })
        .OrderByDescending(e => e.TotalPoints)
        .ToList();

        Assert.That(results.Count, Is.EqualTo(20));
        Assert.That(results.ElementAt(0).Team, Is.EqualTo("Man City"));
        Assert.That(results.ElementAt(0).TotalPoints, Is.EqualTo(55));

          //assert
        foreach (var item in results)
        {
            Console.WriteLine($"{item.Team} {item.TotalPoints}");
        }
    }

    //13 Finn alle antall kamper for ALLE mnd i 2017/2018 , også de med 0 (altså totalt 24 mnd..)
    [Test]
    public void Test13_Kamper_Pr_mnd()
    {
        DateTime startMnd = new DateTime(2017, 01, 01);

        var matches = footBallContext.Set<ScoreResult>()
           .GroupBy(e => new { e.Date.Year, e.Date.Month })
           .ToList()
           .Select(g => new
           {
               g.Key,
               Count=g.Count()
           });

        var results = Enumerable.Range(0, 24).Select(e => startMnd.AddMonths(e))
        .Select(e =>
        new
        {
            e.Year,
            e.Month,
            Count = matches.Where(g => g.Key.Year == e.Year && g.Key.Month == e.Month).Select(e => e.Count).FirstOrDefault()
        });

          //assert
        Assert.That(results.Count, Is.EqualTo(24));
        Assert.That(results.ElementAt(0).Count, Is.EqualTo(0));
        Assert.That(results.ElementAt(11).Count, Is.EqualTo(69));
        Assert.That(results.Sum(e=>e.Count), Is.EqualTo(380));

        foreach (var item in results)
        {
            Console.WriteLine($"{item.Year} {item.Month} {item.Count}");
        }

    }

    //18 Hvilke team hadde en lengste seieresrekken ( hjemme og borte kamper sett under ett)
    [Test]
    public void Test18_Lengste_seiersrekke()
    {
        var results = footBallContext.Set<ScoreResult>()
             .Select(e => new { Team=e.HomeTeamName,Win=e.HG > e.AG,e.Date })
             .Concat(
                  footBallContext.Set<ScoreResult>()
                 .Select(e => new { Team = e.AwayTeamName, Win = e.HG < e.AG, e.Date })
             ).ToList()
          .GroupBy(e => e.Team)
          .Select(g => new
              {
                  Team = g.Key,
                  Lengste = g.OrderBy(e=>e.Date).Aggregate(new MaxData(), ( total,   next) =>
                     {
                         if (next.Win)
                         {
                             total.Current++;
                             if (total.Current > total.Max)
                                 total.Max = total.Current;
                         }
                         else
                             total.Current = 0;

                         return total;

                     }).Max
              }
          )
          .OrderByDescending(e => e.Lengste);

          //assert
        Assert.That(results.Count, Is.EqualTo(20));
        Assert.That(results.ElementAt(0).Team, Is.EqualTo("Man City"));
        Assert.That(results.ElementAt(0).Lengste, Is.EqualTo(18));

        foreach (var item in results)
        {
            Console.WriteLine($"{item.Team} {item.Lengste}");
        }

    }
}



class MaxData
{
    public int Current { get; set; } = 0;
    public int Max { get; set; } = 0;

}

class MaxDataCounts
{
    public int Current { get; set; } = 0;
    public int Max { get; set; } = 0;
    public int Counts { get; set; } = 0;

}


class Ranker
{
    static int currentPoint = 10000;
    static int currentRank = 0;
    static int nextRank = 1;

    public static int Rank(int points)
    {
        if (points < currentPoint)
        {
            currentPoint = points;
            currentRank = nextRank;
        }

        nextRank++;
        return currentRank;
    }
}