//:: k_ptat_niconews
/*
     The player has not yet told Nico about the good deal.
*/
//:: Created By: John Winski
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_tat"

int StartingConditional()
{
    if (GetCelisNicoInfoLocal() == TRUE &&
        GetNicoHappyLocal() == FALSE)
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}
