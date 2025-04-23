namespace Fhi.KompetanseUtvikling.Linq.Fotball.Test;

public static class SplitExtender
{
    public static IEnumerable<T2> Spliter<T1,T2>(this IEnumerable<T1> liste ,Func<T1,T2> f1,Func<T1,T2> f2 )   
    {
        var newListe=new List<T2>();
        foreach( T1 item in liste )
        {
            newListe.Add(f1(item));
            newListe.Add(f2(item));
        }
        
        return newListe;
    } 
}
