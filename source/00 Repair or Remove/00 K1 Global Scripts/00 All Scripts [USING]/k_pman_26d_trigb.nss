#include "k_inc_man"

void main()
{
    if(UT_GetPlotBooleanFlag(OBJECT_SELF,SHIP_LANDING_CUTSCENE))
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF,SHIP_LANDING_CUTSCENE,FALSE);
        //DelayCommand(3.0,PlaceShip("man26d_strshpb",GetLocation(GetObjectByTag("man26d_wp_padb"))));
       // DelayCommand(6.0,PlaceNPC("man26_sithkol1"));
       // DelayCommand(6.0,PlaceNPC("man26_sithkol2"));
        PlaceShip("man26d_strshpb",GetLocation(GetObjectByTag("man26d_wp_padb")));
        PlaceNPC("man26_sithkol1");
        PlaceNPC("man26_sithkol2");
    }
    else if(UT_GetPlotBooleanFlag(OBJECT_SELF,SHIP_TAKEOFF_CUTSCENE))
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF,SHIP_TAKEOFF_CUTSCENE,FALSE);
    }
}

