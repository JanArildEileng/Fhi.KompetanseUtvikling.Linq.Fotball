using Fhi.KompetanseUtvikling.Linq.Fotball.Test;

namespace Fhi.KompetanseUtvikling.LinqDemo.Demo.GroupBy;

//Merk: GroupBy returnerer en liste av lister (+ key)
[Category("Demo-Tester")]
public class GroupByTester : TestsBase
{
    [Test]
    public void Test_List_GroupBy()
    {
        var result = ScoreResultsAsList
            .GroupBy(e => e.AwayTeamName);

        Assert.Pass();
    }

    [Test]
    public void Test_List_GroupBy_Composite()
    {
        var result = ScoreResultsAsList
            .GroupBy(e => new { e.Date.Year, e.Date.Month });

        Assert.Pass();
    }

    [Test]
    public void Test_List_GroupBy_WithSelect()
    {
        var result = ScoreResultsAsList
             .GroupBy(e => new { e.Date.Year, e.Date.Month })
             .Select(g => new
             {
                 g.Key,
                 Count = g.Count(e => e.HG > e.AG)
             });

        Assert.Pass();
    }


    //Merk:Query henter kun de feltene som er spesifiert i Select-statemente fra DB
    [Test]
    public void Test_Query_GroupBy_WithSelect()
    {
        var result = ScoreResultsAsQuery
              .GroupBy(e => new { e.HomeTeamName, e.Date.Year })
              .Select(g => new LocalData
              {  //Merk LocalData er optional...
                  Key = g.Key,
                  Count = g.Count(e => e.HG > e.AG)
              })
             .ToList(); //Run query here..!

        Assert.Pass();
    }

}

internal class LocalData
{
    public int Count { get; set; }
    public object Key { get; internal set; }
}