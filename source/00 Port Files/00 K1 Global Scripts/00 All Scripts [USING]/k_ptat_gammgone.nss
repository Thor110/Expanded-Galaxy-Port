//:: k_ptat_gammgone
/*
     The Gammoreans have gone because of the player.
*/
//:: Created By: John Winski
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_tat"

int StartingConditional()
{
    if (GetGammoreanGoneGlobal() == TRUE)
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}
