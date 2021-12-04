//:: k_ptat_notracer
/*
     The player has not signed up as a racer.
*/
//:: Created By: John Winski
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_tat"

int StartingConditional()
{
    if (GetTatooineRacerGlobal() == FALSE)
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}
