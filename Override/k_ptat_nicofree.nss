//:: k_ptat_nicofree
/*
     The player has not resolved the problem with Nico.
*/
//:: Created By: John Winski
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_tat"

int StartingConditional()
{
    if (GetBulliedNicoLocal() == FALSE &&
        GetCelisDealLocal() == FALSE)
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}
