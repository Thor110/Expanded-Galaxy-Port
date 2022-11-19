//:: k_pman_race_0_q4
/*
     The player has not won any of the races on manaan.
     Queedle is Champion.
     random 4 of 4 to be placed on 4th from bottom.
*/
//:: Created By: Lukas Kristjanson
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_man"

int StartingConditional()
{
    if ((GetManaanRaceStateGlobal() == 0) &&
        (Random(4) == 0) &&
        (GetQueedleStateGlobal() == 2))
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}



