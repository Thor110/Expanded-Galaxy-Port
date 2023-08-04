//:: k_ptat_bullynico
/*
     The player bullied Nico into signing with Celis.
*/
//:: Created By: John Winski
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_tat"

int StartingConditional()
{
    if (GetBulliedNicoLocal() == TRUE)
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}
