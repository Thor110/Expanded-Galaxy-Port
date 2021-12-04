//:: k_ptat_nohkinfo
/*
     The player has not yet been told about HK-47.
*/
//:: Created By: John Winski
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_tat"

int StartingConditional()
{
    if (GetHK47InfoLocal() == FALSE)
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}
