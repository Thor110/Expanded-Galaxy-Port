//:: k_hen_spawn01
/*
    v1.0
    Henchmen On Spawn In
*/
//:: Created By: Preston Watamaniuk
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_generic"
#include "k_inc_debug"

void main()
{
   //added march 10,03 by Aidan
   SetIsDestroyable(TRUE,TRUE,TRUE);

   GN_SetListeningPatterns();      // Goes through and sets up which shouts the NPC will listen to.
   //SetNPCAIStyle(OBJECT_SELF, ST
   //Find out what the constants are called.

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

// DEFAULT GENERIC BEHAVIOR (DO NOT TOUCH) *****************************************************************************************
}
