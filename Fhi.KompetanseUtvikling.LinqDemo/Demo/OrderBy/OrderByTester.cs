using Fhi.KompetanseUtvikling.Linq.Fotball.Test;

namespace Fhi.KompetanseUtvikling.LinqDemo.Demo.OrderBy;

public class OrderByTester : TestsBase
{
    [Category("Demo-Tester")]
    [Test]
    public void Test_List_OrderBy()
    {
        var result = ScoreResultsAsList
            .OrderBy(e => e.AwayTeamName);
        Assert.Pass();
    }

    [Test]
    public void Test_List_OrderByThenBy()
    {
        var result = ScoreResultsAsList
          .OrderBy(e => e.HomeTeamName)
          .ThenBy(e => e.AwayTeamName);

        Assert.Pass();

    }

    [Test]
    public void Test_List_OrderByDescending()
    {
        var result = ScoreResultsAsList
       .OrderByDescending(e => e.AwayTeamName);
        Assert.Pass();
    }


    //Merk:Query henter kun de feltene som er spesifiert i Select-statemente fra DB
    [Test]
    public void Test_Query_OrderBy()
    {
        var result = ScoreResultsAsQuery
            .OrderBy(e => e.AwayTeamName)
            .ToList(); //Run query here..!

        Assert.Pass();
    }

}