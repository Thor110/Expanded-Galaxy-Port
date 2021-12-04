//:: k_ptat_raceone
/*
     The player has won the first of the races on Tatooine.
*/
//:: Created By: John Winski
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_tat"

int StartingConditional()
{
    if (GetRaceCompleteGlobal() == 1)
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}
