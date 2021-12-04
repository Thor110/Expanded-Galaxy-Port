//:: k_ptat_no_k_map
/*
     The player does not have the map
     to the krayt dragon area.
*/
//:: Created By: John Winski
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_tat"

int StartingConditional()
{
    if (GetKraytMapGlobal() == FALSE)
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}
