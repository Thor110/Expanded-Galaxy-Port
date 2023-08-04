//:: k_ptat_racechamp
/*
     The player has won all of the races on Manaan.
*/
//:: Created By: Lukas Kristjanson
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_man"

int StartingConditional()
{
    if (GetManaanRaceStateGlobal() == 3)
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}

