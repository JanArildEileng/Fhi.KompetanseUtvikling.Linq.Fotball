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
        //TODO : Add missing Code!

        Assert.That(counts, Is.EqualTo(20));
    }

    //Finn antall kamper spilt pr År/Mnd
    [Test]
    public void Test03_Finn_Antall_Kamper_Spilt_pr_AarMnd()
    {
         //TODO : Add missing Code!

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
        //TODO : Add missing Code!

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
      //TODO : Add missing Code!
    
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
           //TODO : Add missing Code!
     
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
     //TODO : Add missing Code!

        //assert
        Assert.That(results.TeamName, Is.EqualTo("Newcastle"));
        Assert.That(results.Max, Is.EqualTo(5));
        Console.WriteLine($"{results.TeamName} {results.Max}");
    }

    //7b) Hvilke team tapte minst 3 hjemmpekamper på rad?
    [Test]
    public void Test07b_Hvilke_team_tapte_minst_3_hjemmpekamper_på_rad()
    {
        //TODO : Add missing Code!  

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
           //TODO : Add missing Code!
   
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
           //TODO : Add missing Code!
     
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
           //TODO : Add missing Code!
  
          //assert
        Assert.That(teamNames.Count, Is.EqualTo(6));
        Assert.That(teamNames.Contains("Arsenal"), Is.True);
    }


    //11a: Lag tabell , der kun London-lag inngår  ( altså kun kamper mellom London-lag)
    [Test]
    public void Test11a_London_Tabell()
    {
           //TODO : Add missing Code!
   
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
           //TODO : Add missing Code!
     
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
      //TODO : Add missing Code!

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
           //TODO : Add missing Code!

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
           //TODO : Add missing Code!

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
           //TODO : Add missing Code!

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