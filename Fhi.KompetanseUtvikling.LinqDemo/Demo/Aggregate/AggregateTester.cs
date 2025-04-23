using Fhi.KompetanseUtvikling.Linq.Fotball.Model;
using Fhi.KompetanseUtvikling.Linq.Fotball.Test;

namespace Fhi.KompetanseUtvikling.LinqDemo.Demo.Aggregate;

public class AggregateTester : TestsBase
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
    public void Test_Aggregate_Sum()
    {
        int totalA = data
            .Aggregate(0, (int total, Data next) =>
            {
                  return total+next.A;
            });
      
        Console.WriteLine($"totalA= {totalA} ");
        Assert.That(totalA, Is.EqualTo(10));
    }

    [Test]
    public void Test_Aggregate_Max()
    {
        int maxA = data
            .Aggregate(0, (int max, Data next) =>
            {
                  return max>next.A? max: next.A;
            });
      
        Console.WriteLine($"maxA= {maxA} ");
        Assert.That(maxA, Is.EqualTo(9));
    }

    [Test]
    public void Test_Aggregate_MinMax()
    {
        MinMax minMax= data
            .Aggregate(new MinMax(), (MinMax minMax, Data next) =>
            {
                minMax.Min = minMax.Min < next.A ? minMax.Min : next.A;
                minMax.Max = minMax.Max > next.A ? minMax.Max : next.A;
                return minMax;    
            });
      
        Console.WriteLine($"max= {minMax.Max}  min={minMax.Min}");
        Assert.That(minMax.Max, Is.EqualTo(9));
        Assert.That(minMax.Min, Is.EqualTo(1));

    }

    class MinMax
    {
        public int Min { get; set; } = int.MaxValue;
        public int Max { get; set; } = int.MinValue;

    }


}
