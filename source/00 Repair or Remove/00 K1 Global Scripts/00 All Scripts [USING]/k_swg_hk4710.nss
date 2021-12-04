//:: k_swg_hk4710
/*
    Increments HK-47's story global
*/
//:: Created By: David Gaider
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

void main()
{
    int nPlot = GetGlobalNumber("K_SWG_HK47_FIX");
    SetGlobalNumber("K_SWG_HK47_FIX", (nPlot + 1));
}
