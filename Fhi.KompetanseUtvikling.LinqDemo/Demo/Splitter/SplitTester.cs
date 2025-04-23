namespace Fhi.KompetanseUtvikling.Linq.Fotball.Test;

public class SplitTester : TestsBase
{
    class Data
    {
        public int A { get; set; }
        public int B { get; set; }
    }

    IEnumerable<Data> data = new List<Data>()
    {
        new Data() { A = 1, B = 6 },
        new Data() { A = 9, B = 2 }
    };


    [Test]
    public void Test01_Split()
    {
        var result = data
            .Spliter(a => a.A, a => a.B)
            .ToList();

        foreach (var item in result)
        {
            Console.WriteLine($" {item} ");
        }

        Assert.Pass();
    }

}
