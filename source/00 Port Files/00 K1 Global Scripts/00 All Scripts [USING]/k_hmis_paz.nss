//:: k_hmis_paz
/*
    Is the PC on the Ebon Hawk and does PC have Pazzak Deck
*/
//:: Created By: Preston Watamaniuk
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

int StartingConditional()
{
    if(GetIsObjectValid(GetWaypointByTag("K_EBON_HAWK_LOCATION"))
    && GetIsObjectValid(GetItemPossessedBy(GetPCSpeaker(),"g_i_pazdeck")))
    {
        return TRUE;
    }
    return FALSE;
}

