//:: k_def_grenspwn
/*
    Grenadier Custom On Spawn In Script
*/
//:: Created By: Preston Watamaniuk
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_generic"
#include "k_inc_debug"

void main()
{
// WALK WAYPOINT BEHAVIORS (Comment In or Out to Activate ) ****************************************************************************
     //GN_SetSpawnInCondition(SW_FLAG_WAYPOINT_WALK_CIRCULAR);
     //GN_SetSpawnInCondition(SW_FLAG_WAYPOINT_WALK_ONCE);
     //GN_SetSpawnInCondition(SW_FLAG_WAYPOINT_WALK_PATH);
     //GN_SetSpawnInCondition(SW_FLAG_WAYPOINT_WALK_RANDOM);
     //GN_SetSpawnInCondition(SW_FLAG_WAYPOINT_WALK_RUN);
     //GN_SetSpawnInCondition(SW_FLAG_WAYPOINT_WALK_STOP);         //Causes the creature to pause for 1 - 3 seconds at a waypoint
     //GN_SetSpawnInCondition(SW_FLAG_WAYPOINT_WALK_STOP_LONG);    //Causes the creature to pause for 6 - 12 seconds at a waypoint
     //GN_SetSpawnInCondition(SW_FLAG_WAYPOINT_WALK_STOP_RANDOM);  //Causes the creature to pause for 1 - 12 seconds at a waypoint
     //GN_SetWalkWayPointsSeries(1); //If this function is uncommented a number from 1 to 99 must be passed. This number represents
                                     //a waypoint series that uses the string "01" through "99" instead of the creature's tag.
                                     // eg. WP_22_01 through WP_22_05.  22 is the series number set with this function.

     //GN_SetSpawnInCondition(SW_FLAG_FAST_BUFF);
     //GN_SetSpawnInCondition(SW_FLAG_AMBIENT_ANIMATIONS);
     //GN_SetSpawnInCondition(SW_FLAG_AMBIENT_ANIMATIONS_MOBILE);
                //This will play Ambient Animations until the NPC sees an enemy or is cleared.
                //NOTE that these animations will play automatically for Encounter Creatures.
     //GN_SetSpawnInCondition(SW_FLAG_ON_DIALOGUE_COMPUTER);
                //When a creature with this flag is talked to a computer dialogue will come up instead of the usual screens.

// CUSTOM USER DEFINED EVENTS
/*
    The following settings will allow the user to fire one of the blank user defined events in the NW_D2_DefaultD.  Like the
    On Spawn In script this script is meant to be customized by the end user to allow for unique behaviors.  The user defined
    events user 1000 - 1010
*/
    //GN_SetSpawnInCondition(SW_FLAG_EVENT_ON_HEARTBEAT);        //OPTIONAL BEHAVIOR - Fire User Defined Event 1001
    //GN_SetSpawnInCondition(SW_FLAG_EVENT_ON_PERCEPTION);       //OPTIONAL BEHAVIOR - Fire User Defined Event 1002
    //GN_SetSpawnInCondition(SW_FLAG_EVENT_ON_ATTACKED);         //OPTIONAL BEHAVIOR - Fire User Defined Event 1005
    //GN_SetSpawnInCondition(SW_FLAG_EVENT_ON_DAMAGED);          //OPTIONAL BEHAVIOR - Fire User Defined Event 1006
    //GN_SetSpawnInCondition(SW_FLAG_EVENT_ON_DISTURBED);        //OPTIONAL BEHAVIOR - Fire User Defined Event 1008
    //GN_SetSpawnInCondition(SW_FLAG_EVENT_ON_COMBAT_ROUND_END); //OPTIONAL BEHAVIOR - Fire User Defined Event 1003
    //GN_SetSpawnInCondition(SW_FLAG_EVENT_ON_DIALOGUE);         //OPTIONAL BEHAVIOR - Fire User Defined Event 1004
    //GN_SetSpawnInCondition(SW_FLAG_EVENT_ON_DEATH);            //OPTIONAL BEHAVIOR - Fire User Defined Event 1007
    //GN_SetSpawnInCondition(SW_FLAG_EVENT_ON_DISTURBED);        //OPTIONAL BEHAVIOR - Fire User Defined Event 1008
    //GN_SetSpawnInCondition(SW_FLAG_EVENT_ON_BLOCKED);          //OPTIONAL BEHAVIOR - Fire User Defined Event 1009
    //GN_SetSpawnInCondition(SW_FLAG_EVENT_ON_FORCE_AFFECTED);   //OPTIONAL BEHAVIOR - Fire User Defined Event 1010
    //GN_SetSpawnInCondition(SW_FLAG_EVENT_ON_DIALOGUE_END);     //OPTIONAL BEHAVIOR - Fire User Defined Event 1011

// DEFAULT GENERIC BEHAVIOR (DO NOT TOUCH) *****************************************************************************************
    SetNPCAIStyle(OBJECT_SELF, NPC_AISTYLE_GRENADE_THROWER);
    GN_SetDayNightPresence(AMBIENT_PRESENCE_ALWAYS_PRESENT);

    GN_SetListeningPatterns();  //This function although poorly named sets up the listening patterns and other important data for the
                                //creature it should never be removed.
    GN_WalkWayPoints();
}

