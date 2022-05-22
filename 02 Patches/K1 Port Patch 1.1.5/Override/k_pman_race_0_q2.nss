//:: k_pman_race_0_q2
/*
     The player has not won any of the races on manaan.
     Queedle is Champion.
     random 2 of 4 to be placed on Second from bottom.
*/
//:: Created By: Lukas Kristjanson
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_man"

int StartingConditional()
{
    if ((GetManaanRaceStateGlobal() == 0) &&
        (Random(2) == 0) &&
        (GetQueedleStateGlobal() == 2))
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}





