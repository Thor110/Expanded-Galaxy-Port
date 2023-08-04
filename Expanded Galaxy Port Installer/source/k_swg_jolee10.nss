//:: k_swg_jolee10
/*
    Advances Jolee's story global (currently temporary)
*/
//:: Created By: David Gaider
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

void main()
{
    int nPlot = GetGlobalNumber("K_SWG_JOLEE");
    int nLevel = GetHitDice(GetFirstPC());
    SetGlobalNumber("K_SWG_JOLEE", (nPlot + 1));
    SetGlobalNumber("K_SWG_JOLEE_LEVEL", nLevel);
}
