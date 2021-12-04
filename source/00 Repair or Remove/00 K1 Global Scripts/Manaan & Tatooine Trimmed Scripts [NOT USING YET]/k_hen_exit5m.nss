//:: k_hen_exit5m
/*
    Make the party follow if they are not already
*/
//:: Created By: Preston Watamaniuk
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"
#include "k_inc_switch"

void main()
{
    ExecuteScript("k_ai_master", OBJECT_SELF, KOTOR_HENCH_EVENT_ON_EXIT_5m);
    /*
    if(!GN_GetSpawnInCondition(SW_FLAG_AI_OFF) && !GetSoloMode())
    {
        if(GetPartyMemberByIndex(0) != OBJECT_SELF)
        {
            if(IsObjectPartyMember(OBJECT_SELF) &&  //Note that this check replaces GetIsObjectValid(oMaster)
               //GetCurrentAction(OBJECT_SELF) != ACTION_FOLLOW &&
               //GetCurrentAction(OBJECT_SELF) != ACTION_MOVETOPOINT &&
               //GetCurrentAction(OBJECT_SELF) != ACTION_WAIT &&
               GetCurrentAction(OBJECT_SELF) != ACTION_FOLLOWLEADER &&
               !GetIsConversationActive() &&
               GetDistanceBetween(OBJECT_SELF, GetPartyMemberByIndex(0)) > 4.5 &&
               !GN_GetSpawnInCondition(SW_FLAG_SPECTATOR_STATE) &&
               GetCommandable())
            {
                if( //!GetIsInCombat() &&
                    !GetIsObjectValid(GetAttackTarget()) &&
                    !GetIsObjectValid(GetAttemptedAttackTarget()) &&
                    !GetIsObjectValid(GetAttemptedSpellTarget()) )
                {
                    if(!GetSoloMode())
                    {
                        //The distance checking is now down in the script fired from AI Action Update - Leave 5m Radius of party leader.
                        ClearAllActions();
        		        ActionFollowLeader();
                    }
                }
            }
        }
    }
    else if(GetSoloMode() && GetCurrentAction(OBJECT_SELF) == ACTION_FOLLOWLEADER)
    {
        ClearAllActions();
    }
    */
}
