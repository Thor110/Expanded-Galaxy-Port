//:: k_ptat_gammbad
/*
     The player has been warned about the Gammoreans.
*/
//:: Created By: John Winski
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_tat"

int StartingConditional()
{
    if (GetGammoreanWarningGlobal() == TRUE)
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}
