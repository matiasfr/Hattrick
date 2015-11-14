using UnityEngine;
using System.Collections;
using System.IO;
using System;

using System.Text;

public class MetricsManager : MonoBehaviour {


    //When the game quits we'll actually write the file.
    public static void SaveMetrics() {
        string time = System.DateTime.UtcNow.ToString(); string dateTime = System.DateTime.Now.ToString(); //Get the time to tack on to the file name
        time = time.Replace("/", "-"); //Replace slashes with dashes, because Unity thinks they are directories..
        time = time.Replace(":", "-"); //Replace slashes with dashes, because Unity thinks they are directories..
        time = time.Replace(".", "-"); //Replace slashes with dashes, because Unity thinks they are directories..

        string reportFile = "HatTrick_Metrics_" + time + ".txt";
        string createText = GenerateMetricsString();

        File.WriteAllText(reportFile, createText);

        Debug.Log("saved metrics to " + reportFile);
        //In Editor, this will show up in the project folder root (with Library, Assets, etc.)
        //In Standalone, this will show up in the same directory as your executable
    }

    static string GenerateMetricsString() {
        string text =
            "PlayerNum,EarthProj,FireProj,WaterProj,EarthShield,FireShield,WaterShield,Dashes,Lives,KillsEarth,KillsFire, KillsWater" + Environment.NewLine;

        foreach (Player p in PlayersManager.Players) {
            text += p.PrintMetrics();
        }
        Debug.Log(text);
        return text;
    }
        

}
