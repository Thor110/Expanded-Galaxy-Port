//:: Name
/*
    XX Custom On Spawn In Script
*/
//:: Created By:
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_man"

void main()
{

    //GN_SetSpawnInCondition(SW_FLAG_EVENT_ON_HEARTBEAT);        //OPTIONAL BEHAVIOR - Fire User Defined Event 1001
    //GN_SetSpawnInCondition(SW_FLAG_EVENT_ON_PERCEPTION);       //OPTIONAL BEHAVIOR - Fire User Defined Event 1002
    //GN_SetSpawnInCondition(SW_FLAG_EVENT_ON_ATTACKED);         //OPTIONAL BEHAVIOR - Fire User Defined Event 1005
    //GN_SetSpawnInCondition(SW_FLAG_EVENT_ON_DAMAGED);          //OPTIONAL BEHAVIOR - Fire User Defined Event 1006
    //GN_SetSpawnInCondition(SW_FLAG_EVENT_ON_DISTURBED);        //OPTIONAL BEHAVIOR - Fire User Defined Event 1008
    GN_SetSpawnInCondition(SW_FLAG_EVENT_ON_COMBAT_ROUND_END); //OPTIONAL BEHAVIOR - Fire User Defined Event 1003
    //GN_SetSpawnInCondition(SW_FLAG_EVENT_ON_DIALOGUE);         //OPTIONAL BEHAVIOR - Fire User Defined Event 1004
    //GN_SetSpawnInCondition(SW_FLAG_EVENT_ON_DEATH);            //OPTIONAL BEHAVIOR - Fire User Defined Event 1007
    //GN_SetSpawnInCondition(SW_FLAG_EVENT_ON_DISTURBED);        //OPTIONAL BEHAVIOR - Fire User Defined Event 1008
    //GN_SetSpawnInCondition(SW_FLAG_EVENT_ON_BLOCKED);          //OPTIONAL BEHAVIOR - Fire User Defined Event 1009
    //GN_SetSpawnInCondition(SW_FLAG_EVENT_ON_FORCE_AFFECTED);   //OPTIONAL BEHAVIOR - Fire User Defined Event 1010

// DEFAULT GENERIC BEHAVIOR (DO NOT TOUCH) *****************************************************************************************

    GN_SetDayNightPresence(AMBIENT_PRESENCE_ALWAYS_PRESENT);

    GN_SetListeningPatterns();  //This function although poorly named sets up the listening patterns and other important data for the
                                //creature it should never be removed.
    GN_WalkWayPoints();
    ApplyEffectToObject(DURATION_TYPE_PERMANENT,EffectAssuredHit(),OBJECT_SELF);
}

