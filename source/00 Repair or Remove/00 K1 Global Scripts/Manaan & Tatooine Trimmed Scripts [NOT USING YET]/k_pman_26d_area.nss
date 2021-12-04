#include "k_inc_man"
void main()
{
    object oEnter = GetEnteringObject();
    if(GetIsPC(oEnter))
    {
        int nState = GetGlobalNumber("MAN_DOCK_STATE");
        string sPadA = "man26d_strshpa";
        string sPadB = "man26d_strshpb";
        string sPadC = "man26d_strshpc";
        location lPadA = GetLocation(GetObjectByTag("man26d_wp_pada"));
        location lPadB = GetLocation(GetObjectByTag("man26d_wp_padb"));
        location lPadC = GetLocation(GetObjectByTag("man26d_wp_padc"));
        object oTrigA = GetObjectByTag("man26d_pada");
        object oTrigB = GetObjectByTag("man26d_padb");
        object oTrigC = GetObjectByTag("man26d_padc");


        if(GetGlobalNumber("MAN_MURDER_PLOT") == 0 &&
           GetGlobalBoolean("G_JoleeJoined"))
        {
            SetGlobalNumber("MAN_MURDER_PLOT",1);
        }

        UT_ResetPlotBooleanFlags(oTrigA,FALSE);
        UT_ResetPlotBooleanFlags(oTrigB,FALSE);
        UT_ResetPlotBooleanFlags(oTrigC,FALSE);

        switch(nState)
        {
            case 0:
            {
               RemoveShip(sPadA);
               UT_SetPlotBooleanFlag(oTrigB,SHIP_TAKEOFF_CUTSCENE,TRUE);
               PlaceShip(sPadC,lPadC);
            }
            break;

            case 1:
            {
               RemoveShip(sPadA);
               RemoveShip(sPadB);
               UT_SetPlotBooleanFlag(oTrigC,SHIP_TAKEOFF_CUTSCENE,TRUE);
            }
            break;

            case 2:
            {
                UT_SetPlotBooleanFlag(oTrigA,SHIP_LANDING_CUTSCENE,TRUE);
                RemoveShip(sPadB);
                RemoveShip(sPadC);
            }
            break;

            case 3:
            {
                PlaceShip(sPadA,lPadA);
                UT_SetPlotBooleanFlag(oTrigB,SHIP_LANDING_CUTSCENE,TRUE);
                RemoveShip(sPadC);
            }
            break;

            case 4:
            {
                PlaceShip(sPadA,lPadA);
                PlaceShip(sPadB,lPadB);
                UT_SetPlotBooleanFlag(oTrigB,SHIP_LANDING_CUTSCENE,TRUE);
            }
            break;

            case 5:
            {
                UT_SetPlotBooleanFlag(oTrigB,SHIP_TAKEOFF_CUTSCENE,TRUE);
                PlaceShip(sPadB,lPadB);
                PlaceShip(sPadC,lPadC);
            }
            break;

        }
        nState++;
        SetGlobalNumber("MAN_DOCK_STATE",nState);
        }
}
