//:: k_def_CBTBlk01
/*
    Blocked moving around a creature

   Input to script

   oidBlocker = GetBlockingCreature()

   oidEnemy = GetFoundEnemyCreature()


  when this script is called, if the oidEnemy is a invalid object then this script was called
  because there is no way to walk around the blocking creature.

  if the oidEnemy is valid then we where moving around a creature and encountered a hostile creature.

  if we have a enemy then we want to determin combat round on them.


*/
//:: Created By: Robert Babiak
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"
#include "k_inc_switch"
#include "k_inc_utility"

void main()
{

    //Changed May 23 by Aidan
    //added the check
    //controlled characters should not run this ai
    //
    if(OBJECT_SELF != GetPartyMemberByIndex(0))
    {
        ExecuteScript("k_ai_master", OBJECT_SELF, KOTOR_DEFAULT_EVENT_ON_PATH_BLOCKED);
    }
   /*
   object oBlocker = GetBlockingCreature();
   object oEnemy = GetFoundEnemyCreature();

   AurPostString(GN_ReturnDebugName(oBlocker),0,15,2.0);
   AurPostString(GN_ReturnDebugName(oEnemy),0,16,2.0);

   if(GetIsObjectValid(oEnemy) && GetCommandable() && oEnemy != GetAttemptedAttackTarget())
   {
        // we have tried moving around a creature and encountered a creature that is hostile.

      if(!GN_GetSpawnInCondition(SW_FLAG_COMMONER_BEHAVIOR)
         && !GN_GetSpawnInCondition(SW_FLAG_SPECTATOR_STATE)
         && !GN_GetSpawnInCondition(SW_FLAG_AI_OFF))
      {
           GN_MyPrintString("GENERIC DEBUG ***************               Combat Blocked "+GN_ReturnDebugName(oEnemy));
           GN_MyPrintString("GENERIC DEBUG ***************               Combat Blocked Clear (PICK an Number preston)");

           ClearAllActions();
           GN_DetermineCombatRound(oEnemy);
      }

   }

   if(!GetIsObjectValid(oEnemy) && GetCommandable() )
   {
    // we are blocked and have no way around this creature.
    // what should happen?
   }
   */
}

