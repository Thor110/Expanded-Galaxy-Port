//:: k_pman_race_0_q3
/*
     The player has not won any of the races on manaan.
     Queedle is Champion.
     random 3 of 4 to be placed on Third from bottom.
*/
//:: Created By: Lukas Kristjanson
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_man"

int StartingConditional()
{
    if ((GetManaanRaceStateGlobal() == 0) &&
        (Random(3) == 0) &&
        (GetQueedleStateGlobal() == 2))
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}




