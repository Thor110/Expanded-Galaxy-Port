//:: k_ptat_racenone
/*
     The player has not won any of the races on Tatooine.
*/
//:: Created By: John Winski
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_tat"

int StartingConditional()
{
    if (GetRaceCompleteGlobal() == 0)
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}
