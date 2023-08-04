//:: k_ptat_nosalehk
/*
     The player has not bought HK-47.
*/
//:: Created By: John Winski
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_tat"

int StartingConditional()
{
    if (GetHK47SoldLocal() == FALSE)
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}
