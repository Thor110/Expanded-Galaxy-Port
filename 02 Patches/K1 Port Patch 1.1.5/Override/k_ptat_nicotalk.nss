//:: k_ptat_nicotalk
/*
     The player has talked to Celis about Nico.
*/
//:: Created By: John Winski
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_tat"

int StartingConditional()
{
    if (GetCelisNicoInfoLocal() == TRUE)
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}
