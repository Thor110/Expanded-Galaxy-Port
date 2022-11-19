//:: k_hen_heartbt01
/*
    Heartbeat for the non-active party members.
*/
//:: Created By:
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"
#include "k_inc_switch"

void main()
{
    ExecuteScript("k_ai_master", OBJECT_SELF, KOTOR_HENCH_EVENT_ON_HEARTBEAT);
    /*
    object oEnemy = GetNearestCreature(CREATURE_TYPE_PERCEPTION, PERCEPTION_SEEN, OBJECT_SELF, 1, CREATURE_TYPE_REPUTATION, REPUTATION_TYPE_ENEMY);
    //GN_SetSpawnInCondition(SW_FLAG_SHOUTED_AT, FALSE);

    if(!GN_GetSpawnInCondition(SW_FLAG_AI_OFF) && !GetSoloMode())
    {
        if(GetPartyMemberByIndex(0) != OBJECT_SELF)
        {
            if(IsObjectPartyMember(OBJECT_SELF) &&  //Note that this check replaces GetIsObjectValid(oMaster)
               //GetCurrentAction(OBJECT_SELF) != ACTION_FOLLOW &&
               GetCurrentAction(OBJECT_SELF) != ACTION_MOVETOPOINT &&
               //GetCurrentAction(OBJECT_SELF) != ACTION_WAIT &&
               GetCurrentAction(OBJECT_SELF) != ACTION_FOLLOWLEADER &&
               !GetIsConversationActive() &&
               //GetDistanceBetween(OBJECT_SELF, GetPartyMemberByIndex(0)) > 4.5 &&
               !GN_GetSpawnInCondition(SW_FLAG_SPECTATOR_STATE) &&
               GetCommandable())
            {
                //Db_PostString(GetTag(OBJECT_SELF) + " HEARTBEAT CHECK 1 PASS", 4, 10, 2.0);
                if(!GN_GetIsFighting(OBJECT_SELF) && !GetIsObjectValid(oEnemy))
                {
                    //Db_PostString(GetTag(OBJECT_SELF) + " HEARTBEAT CHECK 2 PASS", 4, 12, 2.0);
                    //The distance checking is now down in the script fired from AI Action Update - Leave 5m Radius of party leader.
                    ClearAllActions();
    		        ActionFollowLeader();
                }
            }
        }
    }
    else if(GetSoloMode() && GetCurrentAction(OBJECT_SELF) == ACTION_FOLLOWLEADER)
    {
        ClearAllActions();
    }
    if(GN_GetSpawnInCondition(SW_FLAG_EVENT_ON_HEARTBEAT))
    {
        SignalEvent(OBJECT_SELF, EventUserDefined(1001));
    }
    */
}

