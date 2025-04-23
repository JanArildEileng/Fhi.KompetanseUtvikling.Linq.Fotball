using Fhi.KompetanseUtvikling.Linq.Fotball.Test;

namespace Fhi.KompetanseUtvikling.LinqDemo.Demo.Select
{

    [Category("Demo-Tester")]
    public class SelectTester : TestsBase
    {

        [Test]
        public void Test_List_SelectAll()
        {
            var result = ScoreResultsAsList
                .Select(e => e);
            Assert.Pass();
        }

        [Test]
        public void Test_List_SelectSome()
        {
            var result = ScoreResultsAsList
                .Select(e => new
                {
                    e.HomeTeamName,
                    e.AwayTeamName
                });
            Assert.Pass();
        }

        [Test]
        public void Test_List_SelectSome_WithCalc()
        {
            var result = ScoreResultsAsList
                .Select(e => new
                {
                    e.HomeTeamName,
                    e.AwayTeamName,
                    Diff = e.HG - e.AG
                });
            Assert.Pass();
        }

        [Test]
        public void Test_List_SelectSome_WithNewClass()
        {
            var result = ScoreResultsAsList
                .Select(e => new LocalClass
                {
                    Home = e.HomeTeamName,
                    Away = e.AwayTeamName,
                    Diff = e.HG - e.AG
                });
            Assert.Pass();
        }

     
        //Merk:Query henter kun de feltene som er spesifiert i Select-statemente fra DB
        [Test]
        public void Test_Query_SelectSome()
        {
            var result = ScoreResultsAsQuery
                .Select(e => new
                {
                    Home = e.HomeTeamName,
                    Away = e.AwayTeamName,
                    Diff = e.HG - e.AG
                })
                .ToList(); //Run query here..!

            Assert.Pass();
        }


        private class LocalClass
        {
            public int Diff { get; set; }
            public string Home { get; internal set; }
            public string Away { get; internal set; }
        }
    }
}