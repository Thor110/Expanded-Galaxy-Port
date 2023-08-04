//::///////////////////////////////////////////////
//:: Spawn
//:: h_jol_spawn01
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*

*/
//:://////////////////////////////////////////////
//:: Created By: John Winski
//:: Created On: July 23, 2002
//:://////////////////////////////////////////////

#include "k_inc_kas"

void main()
{
// WALK WAYPOINT BEHAVIORS (Comment In or Out to Activate ) ****************************************************************************
     //GN_SetSpawnInCondition(SW_FLAG_WAYPOINT_WALK_CIRCULAR);
     //GN_SetSpawnInCondition(SW_FLAG_WAYPOINT_WALK_ONCE);
     //GN_SetSpawnInCondition(SW_FLAG_WAYPOINT_WALK_PATH);
     //GN_SetSpawnInCondition(SW_FLAG_WAYPOINT_WALK_RANDOM);
     //GN_SetSpawnInCondition(SW_FLAG_WAYPOINT_WALK_RUN);
     //GN_SetSpawnInCondition(SW_FLAG_WAYPOINT_WALK_STOP);

     //GN_SetSpawnInCondition(SW_FLAG_FAST_BUFF);
     //GN_SetSpawnInCondition(SW_FLAG_AMBIENT_ANIMATIONS);
     //GN_SetSpawnInCondition(SW_FLAG_AMBIENT_ANIMATIONS_MOBILE);
                //This will play Ambient Animations until the NPC sees an enemy or is cleared.
                //NOTE that these animations will play automatically for Encounter Creatures.

// CUSTOM USER DEFINED EVENTS
/*
    The following settings will allow the user to fire one of the blank user defined events in the NW_D2_DefaultD.  Like the
    On Spawn In script this script is meant to be customized by the end user to allow for unique behaviors.  The user defined
    events user 1000 - 1010
*/
    GN_SetSpawnInCondition(SW_FLAG_EVENT_ON_HEARTBEAT);        //OPTIONAL BEHAVIOR - Fire User Defined Event 1001
    //GN_SetSpawnInCondition(SW_FLAG_EVENT_ON_PERCEPTION);       //OPTIONAL BEHAVIOR - Fire User Defined Event 1002
    //GN_SetSpawnInCondition(SW_FLAG_EVENT_ON_ATTACKED);         //OPTIONAL BEHAVIOR - Fire User Defined Event 1005
    //GN_SetSpawnInCondition(SW_FLAG_EVENT_ON_DAMAGED);          //OPTIONAL BEHAVIOR - Fire User Defined Event 1006
    //GN_SetSpawnInCondition(SW_FLAG_EVENT_ON_DISTURBED);        //OPTIONAL BEHAVIOR - Fire User Defined Event 1008
    //GN_SetSpawnInCondition(SW_FLAG_EVENT_ON_COMBAT_ROUND_END); //OPTIONAL BEHAVIOR - Fire User Defined Event 1003
    GN_SetSpawnInCondition(SW_FLAG_EVENT_ON_DIALOGUE);         //OPTIONAL BEHAVIOR - Fire User Defined Event 1004
    //GN_SetSpawnInCondition(SW_FLAG_EVENT_ON_DEATH);            //OPTIONAL BEHAVIOR - Fire User Defined Event 1007
    //GN_SetSpawnInCondition(SW_FLAG_EVENT_ON_DISTURBED);        //OPTIONAL BEHAVIOR - Fire User Defined Event 1008
    //GN_SetSpawnInCondition(SW_FLAG_EVENT_ON_BLOCKED);          //OPTIONAL BEHAVIOR - Fire User Defined Event 1009
    //GN_SetSpawnInCondition(SW_FLAG_EVENT_ON_FORCE_AFFECTED);   //OPTIONAL BEHAVIOR - Fire User Defined Event 1010

// DEFAULT GENERIC BEHAVIOR (DO NOT TOUCH) *****************************************************************************************

    DelayCommand(8.0, SetJoleeTalkLocal(TRUE));

    GN_SetDayNightPresence(AMBIENT_PRESENCE_ALWAYS_PRESENT);
    //GN_SetListeningPatterns();
    //GN_WalkWayPoints();
}
