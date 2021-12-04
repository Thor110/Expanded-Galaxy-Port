//:: k_ptat_nicenico
/*
     The player has not bullied Nico into signing with Celis.
*/
//:: Created By: John Winski
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_tat"

int StartingConditional()
{
    if (GetBulliedNicoLocal() == FALSE)
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}
