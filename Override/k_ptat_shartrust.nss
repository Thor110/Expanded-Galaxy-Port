//:: k_ptat_shartrust
/*
     Sharina has trusted the player to go and sell the dragon pearl for her.
*/
//:: Created By: John Winski
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_tat"

int StartingConditional()
{
    if (GetSharinaWaitLocal() == TRUE)
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}
