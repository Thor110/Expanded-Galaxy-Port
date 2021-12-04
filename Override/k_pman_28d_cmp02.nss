//:: k_pman_28d_cmp01
/*
     Set the variable that the kolto mine is destroyed
*/
//:: Created By:
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_man"
void main()
{
    SetGlobalNumber("MAN_PLANET_PLOT",4);
    UT_SetPlotBooleanFlag(OBJECT_SELF,SW_PLOT_BOOLEAN_01,TRUE);
    UT_SetPlotBooleanFlag(GetObjectByTag("man28_trigb"),SW_PLOT_BOOLEAN_01,TRUE);
    SignalEvent(GetObjectByTag("man28_seabeast"),EventUserDefined(20));
    int nIdx = 1;
    object oFish = GetObjectByTag("FirixaFish0" + IntToString(nIdx));
    while (GetIsObjectValid(oFish))
    {
        DestroyObject(oFish);
        nIdx++;
        oFish = GetObjectByTag("FirixaFish0" + IntToString(nIdx));
    }
    DestroyObject(GetObjectByTag("man28_firixa01"),0.0,TRUE);
    DestroyObject(GetObjectByTag("man28_firixa02"),0.0,TRUE);
    ChangeItemCost("g_i_medeqpmnt01",3.0);
    ChangeItemCost("g_i_medeqpmnt02",3.0);
    ChangeItemCost("g_i_medeqpmnt03",3.0);
    ChangeItemCost("g_i_medeqpmnt05",3.0);
    ChangeItemCost("g_i_medeqpmnt06",3.0);
    ChangeItemCost("g_i_medeqpmnt07",3.0);
   // SetAreaFogColor(GetArea(OBJECT_SELF),0.05,0.1,0.07);
    PlayMovie("26b");
}


