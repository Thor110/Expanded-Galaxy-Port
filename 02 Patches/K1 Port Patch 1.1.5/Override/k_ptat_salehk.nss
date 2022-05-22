//:: k_ptat_salehk
/*
     The player has bought HK-47.
*/
//:: Created By: John Winski
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_tat"

int StartingConditional()
{
    if (GetHK47SoldLocal() == TRUE)
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}
