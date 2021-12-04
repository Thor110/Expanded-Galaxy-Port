//:: k_ptat_celisdeal
/*
     The player convinced Celis to give Nico a better deal.
*/
//:: Created By: John Winski
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_tat"

int StartingConditional()
{
    if (GetCelisDealLocal() == TRUE)
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}
