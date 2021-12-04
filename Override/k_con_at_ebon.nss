//:: k_con_at_Ebon
/*
    Is the PC on the Ebon Hawk
*/
//:: Created By: Preston Watamaniuk
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

int StartingConditional()
{
    if(GetIsObjectValid(GetWaypointByTag("K_EBON_HAWK_LOCATION")))
    {
        return TRUE;
    }
    return FALSE;
}
