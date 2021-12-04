//:: Name
/*
    XX Custom On Spawn In Script
*/
//:: Created By:
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_generic"
#include "k_inc_debug"

void main()
{
     GN_SetSpawnInCondition(SW_FLAG_AMBIENT_ANIMATIONS);

    GN_SetDayNightPresence(AMBIENT_PRESENCE_ALWAYS_PRESENT);

    GN_SetListeningPatterns();  //This function although poorly named sets up the listening patterns and other important data for the
                                //creature it should never be removed.
    GN_WalkWayPoints();
}

