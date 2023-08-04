//:: k_pman_raceonex
/*
     (The player has won the first of the races on Manaan
     AND Queedle quit(he just beat queedle))

     OR

     Queedle is champion
     (and therefore this is the player's first race)
*/
//:: Created By: Lukas Kristjanson
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_man"

int StartingConditional()
{
    if (((GetManaanRaceStateGlobal() == 1) &&
        (GetQueedleStateGlobal() == 1))  ||
        (GetQueedleStateGlobal() == 2))
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}


