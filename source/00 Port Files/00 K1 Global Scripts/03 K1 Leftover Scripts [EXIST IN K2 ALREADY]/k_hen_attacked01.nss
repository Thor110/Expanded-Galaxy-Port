//:: k_hen_attacked01
/*
    Default On Attacked Script
*/
//:: Created By: Preston Watamaniuk
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_switch"
#include "k_inc_debug"

void main()
{
    ExecuteScript("k_ai_master", OBJECT_SELF, KOTOR_HENCH_EVENT_ON_ATTACKED);
    /*
    //Shout Attack my target, only works with the On Spawn In setup
    //SpeakString("GEN_ATTACK_MY_TARGET", TALKVOLUME_SILENT_TALK);
    //Shout that I was attacked
    SpeakString("GEN_I_WAS_ATTACKED", TALKVOLUME_SILENT_SHOUT);
    //SpeakString("GEN_COMBAT_ACTIVE", TALKVOLUME_SILENT_TALK);

    if(!GN_GetSpawnInCondition(SW_FLAG_AI_OFF))
    {
        if(GetPartyMemberByIndex(0) == OBJECT_SELF)
        {
            SpeakString("GEN_I_WAS_ATTACKED", TALKVOLUME_SILENT_TALK);
        }
        if(GetPartyMemberByIndex(0) != OBJECT_SELF && !GetPlayerRestrictMode())
        {
            if(!GetIsObjectValid(GetAttemptedAttackTarget()) && !GetIsObjectValid(GetAttemptedSpellTarget()))
            {
                if(GetIsObjectValid(GetLastAttacker()))
                {
                    if(GetArea(GetLastAttacker()) == GetArea(OBJECT_SELF))
                    {
                        if(!GetIsInCombat())
                        {
                            GN_DetermineCombatRound();
                        }
                    }
                }
            }
        }
        else
        {
            //Shout that I was attacked
            SpeakString("GEN_I_WAS_ATTACKED", TALKVOLUME_SILENT_TALK);
        }
    }
    if(GN_GetSpawnInCondition(SW_FLAG_EVENT_ON_ATTACKED))
    {
        SignalEvent(OBJECT_SELF, EventUserDefined(1005));
    }
    */
}
