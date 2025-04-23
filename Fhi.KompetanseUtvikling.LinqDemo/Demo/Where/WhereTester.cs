using Fhi.KompetanseUtvikling.Linq.Fotball.Model;
using Fhi.KompetanseUtvikling.Linq.Fotball.Test;
using System.Linq.Expressions;

namespace Fhi.KompetanseUtvikling.LinqDemo.Demo.Where;

[Category("Demo-Tester")]
public class WhereTester : TestsBase
{

    [Test]
    public void Test_List_Where()
    {
        var result = ScoreResultsAsList
          .Where(e => e.HG > e.AG);

        Assert.That(result.Count(), Is.EqualTo(173));
        Assert.Pass();
    }


    //Merk:Query henter kun de radene som er spesifiert i Where-statemente fra DB
    [Test]
    public void Test_Query_Where()
    {
        var result = ScoreResultsAsQuery
          .Where(e => e.HG > e.AG)
          .ToList();

        Assert.That(result.Count(), Is.EqualTo(173));
        Assert.Pass();
    }

    [Test]
    public void Test_Simple_Where()
    {
        Func<ScoreResult,Boolean> f = (e) => { return e.HG > e.AG; };  

        var result = ScoreResultsAsList
          .Where(f);

        Assert.That(result.Count(), Is.EqualTo(173));
       
        //with EF query
        result = ScoreResultsAsQuery
          .Where(f).ToList();

        Assert.That(result.Count(), Is.EqualTo(173));

    }

    [Test]
    public void Test_Simple_Where2()
    {
        Func<ScoreResult,Boolean> f = (e) => { return e.HG > e.AG; };  
        //with EF query
        var result = footBallContext.Set<ScoreResult>()
          .Where(f).ToList();

        Assert.That(result.Count(), Is.EqualTo(173));

    }

    [Test]
    public void Test_Query_Func_Where()
    {
        Func<ScoreResult, Boolean> filter = (e) => e.HG > e.AG;
    
        //only filter City on DB   
        var result = ScoreResultsAsQuery
          .Where(e => e.City == "London")
          .Where(filter)
          .ToList();

        //no filter on >DB
        result = ScoreResultsAsQuery
          .Where(filter)
          .Where(e => e.City == "London")
          .ToList();

        Assert.That(result.Count(), Is.EqualTo(60));
    }

    [Test]
    public void Test_Query_Expression_Where()
    {
        Expression<Func<ScoreResult, Boolean>> filter = (e) => e.HG > e.AG;

        //Filter all on DB
        var result = ScoreResultsAsQuery
          .Where(filter)
          .Where(e => e.City == "London")
          .ToList();

        Assert.That(result.Count(), Is.EqualTo(60));

    }



}