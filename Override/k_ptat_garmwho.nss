//:: k_ptat_garmwho
/*
     Garm has not yet reveiled his name to the player.
*/
//:: Created By: John Winski
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_tat"

int StartingConditional()
{
    if (GetGarmNamedLocal() == FALSE)
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}
