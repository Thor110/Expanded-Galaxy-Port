//:: k_hen_leadchng
/*
    Leader Change for the non-active party members.
*/
//:: Created By:
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"
#include "k_inc_generic"

void main()
{
    SetCommandable(TRUE, GetPartyMemberByIndex(0));
    if(!GN_GetSpawnInCondition(SW_FLAG_AI_OFF))
    {
        if(GetPartyMemberByIndex(0) != OBJECT_SELF)
        {
            if(IsObjectPartyMember(OBJECT_SELF) &&  //Note that this check replaces GetIsObjectValid(oMaster)
               //GetCurrentAction(OBJECT_SELF) != ACTION_FOLLOW &&
               //GetCurrentAction(OBJECT_SELF) != ACTION_MOVETOPOINT &&
               //GetCurrentAction(OBJECT_SELF) != ACTION_WAIT &&
               GetCurrentAction(OBJECT_SELF) != ACTION_FOLLOWLEADER &&
               !GetIsConversationActive() &&
               //GetDistanceBetween(OBJECT_SELF, GetPartyMemberByIndex(0)) > 4.5 &&
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
}

