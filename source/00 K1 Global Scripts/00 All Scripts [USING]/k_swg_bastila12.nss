//:: k_swg_bastila12
/*
    The Bastila romance dialogue is in its twelfth exchange
    and the third starmap has been found
*/
//:: Created By: Drew Karpyshyn
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

int StartingConditional()
{
    int iResult = GetGlobalNumber("K_SWG_BASTILA");
    int nLevel = GetHitDice(GetFirstPC());
    int nLastLevel = GetGlobalNumber("K_SWG_BASTILA_LEVEL");
    int nPlot = GetGlobalNumber("K_STAR_MAP");
    object oOnHawk = GetWaypointByTag("K_EBON_HAWK_LOCATION");

    if ((iResult == 11) && (nPlot > 19) && GetIsObjectValid(oOnHawk))
    {
        return TRUE;
    }
    return FALSE;
}
