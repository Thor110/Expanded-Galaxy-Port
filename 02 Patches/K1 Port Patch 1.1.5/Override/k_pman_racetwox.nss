//:: k_pman_racetwox
/*
     (The player has won the second of the races on Manaan
     AND Queedle quit.)

     OR

     (Player has won first tier, AND Queedle Champion.)
*/
//:: Created By: Lukas Kristjanson
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_man"

int StartingConditional()
{
    if (((GetManaanRaceStateGlobal() == 2)&&
        (GetQueedleStateGlobal() == 1)) ||
        ((GetManaanRaceStateGlobal() == 1)&&
        (GetQueedleStateGlobal() == 2)))
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}


