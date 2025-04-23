using Fhi.KompetanseUtvikling.Linq.Fotball.Test;

namespace Fhi.KompetanseUtvikling.LinqDemo.Demo.Join;

[Category("Demo-Tester")]
public class JoinTester : TestsBase
{

    [Test]
    public void Test_List_Join()
    {
        var subListe1 = ScoreResultsAsList;
        var subListe2 = ScoreResultsAsList;

        var result = subListe1
            .Join(subListe2,
               a => new { A = a.HomeTeamName, B = a.AwayTeamName }, //a kommer fra subListe1
               b => new { A = b.AwayTeamName, B = b.HomeTeamName }, //b kommer fra subListe2
                                                                    //dersom A=A og B=B , lage et nytt objekt , med verdier fra a og b...
              (a, b) => new LocalData { TeamName = a.HomeTeamName, MyScore = a.HG + b.AG, TheyScore = b.HG + a.AG }); //LocalData optional

        Assert.Pass();
    }

    //Merk:Query henter kun de feltene som er spesifiert i Select-statemente fra DB
    [Test]
    public void Test_Query_Join()
    {
        var subListe1 = ScoreResultsAsQuery;
        var subListe2 = ScoreResultsAsQuery;

        var result = subListe1
            .Join(subListe2,
               a => new { A = a.HomeTeamName, B = a.AwayTeamName }, //a kommer fra subListe1
               b => new { A = b.AwayTeamName, B = b.HomeTeamName }, //b kommer fra subListe2
                                                                    //dersom A=A og B=B , lage et nytt objekt , med verdier fra a og b...
              (a, b) => new LocalData { TeamName = a.HomeTeamName, MyScore = a.HG + b.AG, TheyScore = b.HG + a.AG })
            .ToList();

        Assert.Pass();
    }

}

internal class LocalData
{
    public string TeamName { get; set; }
    public int MyScore { get; set; }
    public int TheyScore { get; set; }
}