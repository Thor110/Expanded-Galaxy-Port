//:: k_ptat_racetrial
/*
     The player has not won all of the races on Tatooine.
*/
//:: Created By: John Winski
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_tat"

int StartingConditional()
{
    if (GetRaceCompleteGlobal() < 3)
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}
