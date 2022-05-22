//:: k_ptat_haspearl
/*
    The player has a dragon pearl.
*/
//:: Created By: John Winski
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

int StartingConditional()
{
    object oPC = GetPCSpeaker();
    object oDragonPearl = GetItemPossessedBy(oPC, "tat18_dragonprl");

    if (GetIsObjectValid(oDragonPearl) == TRUE)
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}
