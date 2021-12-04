//:: k_swg_bastila20
/*
    Advances the romance tracking global
*/
//:: Created By: David Gaider
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

void main()
{
    SetGlobalNumber("K_LastPlanet",GetGlobalNumber("K_Current_Planet"));
    int nPlot = GetGlobalNumber("K_SWG_BASTILA");
    int nLevel = GetHitDice(GetFirstPC());
    SetGlobalNumber("K_SWG_BASTILA", (nPlot +1));
    SetGlobalNumber("K_SWG_BASTILA_LEVEL", nLevel);
}
