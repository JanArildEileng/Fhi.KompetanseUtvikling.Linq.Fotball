namespace Fhi.KompetanseUtvikling.Linq.Fotball.Model;

public class ScoreResult
{
    public int Id { get; set; }
    public DateTime Date { get; set; }
    public string HomeTeamName { get; set; }
    public string AwayTeamName { get; set; }
    public int HG { get; set; }
    public int AG { get; set; }
    public String City { get; set; }
}



