//:: k_hzal_notkash2
/*
    Is the PC NOT on Kashyyyk AFTER main plot done there
    Planet Global Setting
    VARIABLE = K_CURRENT_PLANET
        Endar Spire - 5  Taris - 10
        Dantooine - 15   Kashyyk - 20
        Manaan - 25      Korriban - 30
        Tatooine - 35    Leviathan - 40
        Unk Wrld - 45    Star Forge - 50
*/
//:: Created By: Lukas Kristjanson
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

int StartingConditional()
{
    int nPlanet = GetGlobalNumber("K_CURRENT_PLANET");
    if((nPlanet != 20)&&
      ((GetGlobalBoolean("kas_ChuundarDead") == TRUE) ||
       (GetGlobalBoolean("kas_FreyyrDead") == TRUE)))
    {
        return TRUE;
    }
    return FALSE;
}



