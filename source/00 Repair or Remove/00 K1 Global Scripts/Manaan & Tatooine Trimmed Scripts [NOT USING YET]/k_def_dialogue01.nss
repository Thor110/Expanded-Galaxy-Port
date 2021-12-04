//:: k_def_dialogue01
/*
    Default On Dialogue Script
*/
//:: Created By: Preston Watamaniuk
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"
#include "k_inc_switch"

void main()
{
    ExecuteScript("k_ai_master", OBJECT_SELF, KOTOR_DEFAULT_EVENT_ON_DIALOGUE);
    /*
    if(!GN_GetSpawnInCondition(SW_FLAG_AI_OFF))
    {
        int nMatch = GetListenPatternNumber();
        object oShouter = GetLastSpeaker();
        object oIntruder;
        
        object oAttacker = GetLastHostileActor(oShouter);
        if(!GetIsObjectValid(oAttacker) || GetIsDead(oAttacker) || !GetObjectSeen(oAttacker, oShouter))
        {
            if(GetCommandable())
            {
                if (nMatch == -1)
                {
                    ClearAllActions();
                    if(GN_GetSpawnInCondition(SW_FLAG_ON_DIALOGUE_COMPUTER))
                    {
                        ActionStartConversation(GetFirstPC(), "", FALSE, CONVERSATION_TYPE_COMPUTER);
                        return;
                    }
                    else
                    {
                        BeginConversation();
                        return;
                    }
                }
                else
                if(nMatch != -1 && GetIsObjectValid(oShouter) && !GetIsPC(oShouter) && GetIsFriend(oShouter))
                {
                    if (nMatch >= 1)
                    {
                        oIntruder = GetLastHostileActor(oShouter);
                        if(!GetIsObjectValid(oIntruder))
                        {
                            oIntruder = GetAttemptedAttackTarget();
                            if(!GetIsObjectValid(oIntruder))
                            {
                                oIntruder = GetAttemptedSpellTarget();
                                if(!GetIsObjectValid(oIntruder))
                                {
                                    oIntruder = GetNearestCreature(CREATURE_TYPE_REPUTATION, REPUTATION_TYPE_ENEMY);
                                    if(!GetIsObjectValid(oIntruder))
                                    {
                                        GN_MyPrintString("GENERIC DEBUG *************** No Intruder Object For Shout");
                                        oIntruder = OBJECT_INVALID;
                                    }
                                }
                            }
                        }
                    }
                    //GN_MyPrintString("GENERIC DEBUG *************** Shout Intruder = " + GN_ReturnDebugName(oIntruder));
                    //GN_MyPrintString("GENERIC DEBUG *************** " + GN_ReturnDebugName(OBJECT_SELF) + " shouted at by: " + GN_ReturnDebugName(oShouter) + " for shout: " + IntToString(nMatch));
                    GN_RespondToShout(oShouter, nMatch, oIntruder);
                }
            }
        }
        if( nMatch == -1 )
        {
            ResetDialogState();
        }
    }
    if(GN_GetSpawnInCondition(SW_FLAG_EVENT_ON_DIALOGUE))
    {
        SignalEvent(OBJECT_SELF, EventUserDefined(1004));
    }
    */
}
