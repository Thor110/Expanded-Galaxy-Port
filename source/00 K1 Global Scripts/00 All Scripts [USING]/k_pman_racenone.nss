//:: k_pman_racenone
/*
     The player has not won any of the races on manaan.
*/
//:: Created By: Lukas Kristjanson
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_man"

int StartingConditional()
{
    if (GetManaanRaceStateGlobal() == 0)
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}

