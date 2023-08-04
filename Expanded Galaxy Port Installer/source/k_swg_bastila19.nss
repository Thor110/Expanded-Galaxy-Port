//:: k_swg_bastila19
/*
    Bastila has already spoken about the holocron
*/
//:: Created By: David Gaider
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

void main()
{
    SetGlobalBoolean("K_SWG_BASTILA_HOLO", TRUE);

    // if Bastila does not have the holocron, take it
    object oItem = GetObjectByTag("holocron");
    object oHasItem = GetItemPossessor(oItem);
    object oBastila = GetObjectByTag("bastila");
    if (oHasItem != oBastila)
    {
        AssignCommand(oBastila, ActionTakeItem(oItem, oHasItem));
    }
}
