using UnityEngine;
using System.Collections;

public class PlayerStatsGUI : MonoBehaviour {

    public StatRow KOs;
    public StatRow falls;
    public StatRow accuracy;
    public StatRow blocks;
 
	public void UpdateStats (Player p) {
        WriteStats(Element.EARTH, 0, p);
        WriteStats(Element.FIRE, 1, p);
        WriteStats(Element.WATER, 2, p);

    }

    void WriteStats(Element e, int val, Player p) {

        if (p.KOsByElement.ContainsKey(e)) {
            KOs.value[val].text = "" + p.KOsByElement[e];

        }
        else {
            KOs.value[val].text = "-";

        }

        if (p.FallsByElement.ContainsKey(e)) {
            falls.value[val].text = "" + p.FallsByElement[e];

        }
        else {
            falls.value[val].text = "-";

        }

        if (p.HitsByElement.ContainsKey(e) && p.ShotsByElement.ContainsKey(e) && p.ShotsByElement[e] > 0) {
            accuracy.value[val].text = "" + Mathf.RoundToInt(100 * p.HitsByElement[e] / p.ShotsByElement[e]) + "%";

        }
        else {
            accuracy.value[val].text = "-";
        }

        if (p.BlocksByElement.ContainsKey(e)) {
            blocks.value[val].text = "" + p.BlocksByElement[e];
        }
        else {
            blocks.value[val].text = "-";

        }


    }
}