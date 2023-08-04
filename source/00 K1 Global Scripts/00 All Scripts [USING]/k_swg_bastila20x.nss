//:: k_swg_bastila20x
/*
    Advances the romance tracking global to 2 ( to compensate for Taris possibly being destroyed)
*/
//:: Created By: David Gaider
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

void main()
{
    SetGlobalNumber("K_LastPlanet",GetGlobalNumber("K_Current_Planet"));
    int nPlot = GetGlobalNumber("K_SWG_BASTILA");
    int nLevel = GetHitDice(GetFirstPC());
    SetGlobalNumber("K_SWG_BASTILA", 2);
    SetGlobalNumber("K_SWG_BASTILA_LEVEL", nLevel);
}
