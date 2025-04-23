using Fhi.KompetanseUtvikling.Linq.Fotball.Test;

namespace Fhi.KompetanseUtvikling.LinqDemo.Demo.Concat;

[Category("Demo-Tester")]
public class ConcatTester : TestsBase
{
    //Merk Concat fjerner  IKKE dublikater
    // (bruk Union hvis dublikater skal fjernes)

    [Test]
    public void Test_List_Concat()
    {
        var result = ScoreResultsAsList
                .Where(e => e.Id < 10)
                .Concat(ScoreResultsAsList.Where(e => e.HG > 3));

        Assert.Pass();
    }

    //Merk:Query henter kun de feltene som er spesifiert i Select-statemente fra DB
    [Test]
    public void Test_Query_Concat()
    {
        var result = ScoreResultsAsQuery
              .Where(e => e.Id < 10)
             .Concat(ScoreResultsAsQuery.Where(e => e.HG > 3))
             .ToList(); //Run query here..!

        Assert.Pass();
    }

    [Test]
    public void Test_Query_Union()
    {
        var result = ScoreResultsAsQuery
              .Where(e => e.Id < 10)
             .Union(ScoreResultsAsQuery.Where(e => e.HG > 3))
             .ToList(); //Run query here..!

        Assert.Pass();
    }

}