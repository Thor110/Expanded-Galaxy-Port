//:: k_ptat_nonicotlk
/*
     The player has not talked to Celis about Nico.
*/
//:: Created By: John Winski
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_tat"

int StartingConditional()
{
    if (GetCelisNicoInfoLocal() == FALSE)
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}
