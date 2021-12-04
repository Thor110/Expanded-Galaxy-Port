#include "k_inc_man"

void main()
{
    object oEnter = GetEnteringObject();
    if(GetIsPC(oEnter))
    {
        if(UT_GetPlotBooleanFlag(OBJECT_SELF,SHIP_LANDING_CUTSCENE))
        {
            UT_SetPlotBooleanFlag(OBJECT_SELF,SHIP_LANDING_CUTSCENE,FALSE);
            //DelayCommand(3.0,PlaceShip("man26d_strshpc",GetLocation(GetObjectByTag("man26d_wp_padc"))));
           // DelayCommand(6.0,PlaceNPC("man26_zoriis"));
           // DelayCommand(6.0,PlaceNPC("man26_yuka"));
           // DelayCommand(6.0,PlaceNPC("man26_casandra"));
            PlaceShip("man26d_strshpc",GetLocation(GetObjectByTag("man26d_wp_padc")));
            PlaceNPC("man26_zoriis");
            PlaceNPC("man26_yuka");
            PlaceNPC("man26_casandra");
        }
        else if(UT_GetPlotBooleanFlag(OBJECT_SELF,SHIP_TAKEOFF_CUTSCENE))
        {
            UT_SetPlotBooleanFlag(OBJECT_SELF,SHIP_TAKEOFF_CUTSCENE,FALSE);
        }
    }
}
