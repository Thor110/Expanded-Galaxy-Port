#include "k_inc_man"

void main()
{
    if(UT_GetPlotBooleanFlag(OBJECT_SELF,SHIP_LANDING_CUTSCENE))
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF,SHIP_LANDING_CUTSCENE,FALSE);
        //DelayCommand(3.0,PlaceShip("man26d_strshpa",GetLocation(GetObjectByTag("man26d_wp_pada"))));
        //DelayCommand(6.0,PlaceNPC("man26_repkol1"));
        //DelayCommand(6.0,PlaceNPC("man26_repkol2"));
        PlaceShip("man26d_strshpa",GetLocation(GetObjectByTag("man26d_wp_pada")));
        PlaceNPC("man26_repkol1");
        PlaceNPC("man26_repkol2");
    }
    else if(UT_GetPlotBooleanFlag(OBJECT_SELF,SHIP_TAKEOFF_CUTSCENE))
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF,SHIP_TAKEOFF_CUTSCENE,FALSE);
    }
}

