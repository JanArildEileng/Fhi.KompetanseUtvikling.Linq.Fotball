
namespace Fhi.KompetanseUtvikling.Linq.Fotball.Model;

public  class CityTeams
{
     static string[] londonTeams = { "Arsenal", "Chelsea", "Crystal Palace", "Tottenham", "Watford", "West Ham" };
     static string[] liverpoolTeams = { "Everton", "Liverpool" };
     static string[] manchesterTeams = { "Man United", "Man City" };

    static public  string[]  London => londonTeams;
    static public  string[]  Liverpool => liverpoolTeams;
    static public  string[]  Manchester => manchesterTeams;


    static public String TeamToCity(string teamname)
    {
        if (London.Contains(teamname)) return "London";
        if (Manchester.Contains(teamname)) return "Manchester";
        if (Liverpool.Contains(teamname)) return "Liverpool";

        return teamname;
    }
    
}
