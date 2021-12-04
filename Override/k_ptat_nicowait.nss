//:: k_ptat_nicowait
/*
     The player has talked to Celis but has not resolved the problem with Nico.
*/
//:: Created By: John Winski
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_tat"

int StartingConditional()
{
    if (GetCelisNicoInfoLocal() &&
        GetBulliedNicoLocal() == FALSE &&
        GetCelisDealLocal() == FALSE)
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}
