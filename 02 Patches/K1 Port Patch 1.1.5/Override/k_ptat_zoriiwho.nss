//:: k_ptat_zoriiwho
/*
     Zoriis Bafka has not yet reveiled his name to the player.
*/
//:: Created By: John Winski
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_tat"

int StartingConditional()
{
    if (GetZoriisNamedLocal() == FALSE)
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}
