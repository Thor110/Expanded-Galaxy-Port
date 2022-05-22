//:: k_ptat_gammbribe
/*
     The Gammoreans have been bribed by the player.
*/
//:: Created By: John Winski
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_tat"

int StartingConditional()
{
    if (GetGammoreanBribeGlobal() == TRUE)
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}
