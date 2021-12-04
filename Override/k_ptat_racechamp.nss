//:: k_ptat_racechamp
/*
     The player has won all of the races on Tatooine.
*/
//:: Created By: John Winski
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_tat"

int StartingConditional()
{
    if (GetRaceCompleteGlobal() == 3)
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}
