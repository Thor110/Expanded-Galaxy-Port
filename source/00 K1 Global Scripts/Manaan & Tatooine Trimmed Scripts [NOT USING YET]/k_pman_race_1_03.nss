//:: k_pman_race_1_03
/*
     The player has won ONE of the races on manaan.
     random 3 of 4 to be placed on Third from bottom.
*/
//:: Created By: Lukas Kristjanson
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_man"

int StartingConditional()
{
    if ((GetManaanRaceStateGlobal() == 1) &&
        (Random(3) == 0))
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}




