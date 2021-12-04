//:: k_hmis_planet
/*
    Checks if player is not on Star Forge or Leviathan or LIVE planet
*/
//:: Created By:  Drew K
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"

//Modified by Preston W on Oct 17,2003
//Rewritten for logic and to add live check.
int StartingConditional()
{
    int nPlanet = GetGlobalNumber("k_current_planet");

    if(nPlanet != 40 && nPlanet != 50 && nPlanet < 55)
    {
        return TRUE;
    }
    return FALSE;
}


