//:: k_swg_carth20
/*
    Advances the romance global
*/
//:: Created By: David Gaider
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

void main()
{
    int nPlot = GetGlobalNumber("K_SWG_CARTH");
    int nLevel = GetHitDice(GetFirstPC());
    SetGlobalNumber("K_SWG_CARTH", (nPlot + 1));
    SetGlobalNumber("K_SWG_CARTH_LEVEL", nLevel);
}
