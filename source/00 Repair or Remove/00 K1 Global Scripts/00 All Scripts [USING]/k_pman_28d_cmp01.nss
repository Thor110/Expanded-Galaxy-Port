//:: k_pman_28d_cmp01
/*
     Set the variable that the kolto mine is shut down
*/
//:: Created By:
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_man"
void main()
{
    if(GetGlobalNumber("MAN_PLANET_PLOT") < 3)
    {
        SetGlobalNumber("MAN_PLANET_PLOT",3);

    UT_SetPlotBooleanFlag(OBJECT_SELF,SW_PLOT_BOOLEAN_01,TRUE);
    UT_SetPlotBooleanFlag(GetObjectByTag("man28_trigb"),SW_PLOT_BOOLEAN_01,TRUE);
    SignalEvent(GetObjectByTag("man28_seabeast"),EventUserDefined(10));
    DestroyObject(GetObjectByTag("man28_firixa01"),0.0,TRUE);
    DestroyObject(GetObjectByTag("man28_firixa02"),0.0,TRUE);

    PlayMovie("26a");
    }
}
