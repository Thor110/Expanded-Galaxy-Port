//:: k_hen_percept01
/*
    On perception event for henchmen
*/
//:: Created By:
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"
#include "k_inc_switch"

void main()
{
    ExecuteScript("k_ai_master", OBJECT_SELF, KOTOR_HENCH_EVENT_ON_PERCEPTION);
    /*
    GN_PostString("Firing Perception", 10,10,4.0);
    if(!GN_GetSpawnInCondition(SW_FLAG_AI_OFF))
    {
        if(GetPartyMemberByIndex(0) != OBJECT_SELF && !GetPlayerRestrictMode())
        {
            //If the last perception event was hearing based or if someone vanished then go to search mode

            if ((GetLastPerceptionVanished()) && GetIsEnemy(GetLastPerceived()))
            {
                object oGone = GetLastPerceived();
                if((GetAttemptedAttackTarget() == GetLastPerceived() ||
                   GetAttemptedSpellTarget() == GetLastPerceived() ||
                   GetAttackTarget() == GetLastPerceived()) && GetArea(GetLastPerceived()) != GetArea(OBJECT_SELF))
                {
                   ClearAllActions();
                   GN_DetermineCombatRound();
                }
            }
            //Do not bother checking the last target seen if already fighting
            else if(!GetIsObjectValid(GetAttemptedAttackTarget()) || !GetIsObjectValid(GetAttemptedSpellTarget()) || !GetIsObjectValid(GetAttackTarget()) )
            {
                //Check if the last percieved creature was actually seen
                if(GetLastPerceptionSeen())
                {
                    if(GetIsEnemy(GetLastPerceived()))
                    {
                        object oLeader = GetPartyMemberByIndex(0);
                        if(GetIsObjectValid(GetAttackTarget(oLeader)))
                        {
                            GN_PostString("Perception Attack", 10,12,4.0);
                            //SetFacingPoint(GetPosition(GetLastPerceived()));
                            //SpeakString("GEN_COMBAT_ACTIVE", TALKVOLUME_SILENT_TALK);
                            SpeakString("GEN_I_WAS_ATTACKED", TALKVOLUME_SILENT_SHOUT);
                            GN_DetermineCombatRound();
                        }
                    }
                }
            }
        }
    }
    if(GN_GetSpawnInCondition(SW_FLAG_EVENT_ON_PERCEPTION) && GetLastPerceptionSeen())
    {
        SignalEvent(OBJECT_SELF, EventUserDefined(1002));
    }
    */
}
