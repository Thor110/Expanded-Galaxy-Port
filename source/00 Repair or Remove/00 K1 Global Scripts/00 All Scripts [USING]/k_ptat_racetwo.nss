//:: k_ptat_racetwo
/*
     The player has won the second of the races on Tatooine.
*/
//:: Created By: John Winski
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_tat"

int StartingConditional()
{
    if (GetRaceCompleteGlobal() == 2)
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}
