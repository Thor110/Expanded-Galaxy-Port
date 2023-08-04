//:: k_ptat_has_k_map
/*
     The player has the map
     to the krayt dragon area.
*/
//:: Created By: John Winski
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_tat"

int StartingConditional()
{
    if (GetKraytMapGlobal() == TRUE)
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}
