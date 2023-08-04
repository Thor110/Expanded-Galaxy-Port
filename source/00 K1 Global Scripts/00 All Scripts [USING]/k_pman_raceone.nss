//:: k_pman_raceone
/*
     The player has won the first of the races on Manaan.
*/
//:: Created By: Lukas Kristjanson
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_man"

int StartingConditional()
{
    if (GetManaanRaceStateGlobal() == 1)
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}

