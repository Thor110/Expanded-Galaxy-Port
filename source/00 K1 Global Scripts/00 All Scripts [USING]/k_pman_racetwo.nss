//:: k_pman_racetwo
/*
     The player has won the second of the races on Manaan.
*/
//:: Created By: Lukas Kristjanson
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_man"

int StartingConditional()
{
    if (GetManaanRaceStateGlobal() == 2)
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}

