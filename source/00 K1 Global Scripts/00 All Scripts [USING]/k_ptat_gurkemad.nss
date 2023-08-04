//:: k_ptat_gurkemad
/*
     Gurke is pissed off at the player.
*/
//:: Created By: John Winski
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_tat"

int StartingConditional()
{
    if (GetGurkePissedLocal() == TRUE)
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}
