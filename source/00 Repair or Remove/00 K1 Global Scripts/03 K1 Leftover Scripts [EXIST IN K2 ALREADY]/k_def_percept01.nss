//:: k_def_percept01
/*
    Default On Perception Script
*/
//:: Created By: Preston Watamaniuk
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_switch"
#include "k_inc_debug"

void main()
{
    ExecuteScript("k_ai_master", OBJECT_SELF, KOTOR_DEFAULT_EVENT_ON_PERCEPTION);
    /*
    object oPerceived = GetLastPerceived();
    if(GetCommandable() && !GN_GetSpawnInCondition(SW_FLAG_AI_OFF))
    {
        //Do not bother checking the last target seen if already fighting
        if(!GN_GetIsFighting(OBJECT_SELF))
        {
            //Check if the last percieved creature was actually seen
            if(GetLastPerceptionSeen())
            {
                if(GetIsEnemy(oPerceived))
                {
                    float fDelay = GetDistanceBetween(OBJECT_SELF, oPerceived);
                    fDelay = fDelay/10.0;
                    DelayCommand(fDelay/2.0, SetFacingPoint(GetPosition(oPerceived)));
                    
                    //MODIFIED by Preston Watamaniuk on April 10, 2003
                    //Put in the agitation flag so that re-encountered monsters do not delay.
                    if(GN_GetSpawnInCondition(SW_FLAG_STATE_AGITATED) == TRUE)
                    {
                        fDelay = 0.0;
                    }
                    
                    SpeakString("GEN_I_WAS_ATTACKED", TALKVOLUME_SILENT_TALK);
                    GN_MyPrintString("GENERIC DEBUG *************** Determine Combat Round from On Perception 2");
                    DelayCommand(fDelay, GN_DetermineCombatRound());
                    if(fDelay > 0.0)
                    {
                       GN_SetSpawnInCondition(SW_FLAG_STATE_AGITATED);
                    }
                }
            }
        }
        //If the last perception event was hearing based or if someone vanished then go to search mode
        else if ((GetLastPerceptionVanished()) && GetIsEnemy(oPerceived))
        {
            if(GetAttemptedAttackTarget() == oPerceived ||
               GetAttemptedSpellTarget() == oPerceived ||
               GetAttackTarget() == oPerceived)
            {
               ClearAllActions();
               GN_DetermineCombatRound();
               
               if(!GetIsObjectValid(GetAttemptedAttackTarget()) ||
                  !GetIsObjectValid(GetAttemptedSpellTarget()) ||
                  !GetIsObjectValid(GetAttackTarget()))
               {
                   ClearAllActions();
                   ActionMoveToObject(oPerceived, TRUE);
                   ActionAttack(oPerceived);
               }
            }
        }
        else if( GetCurrentAction() != ACTION_QUEUEEMPTY )
        {
            //Check if the last percieved creature was actually seen
            if(GetLastPerceptionSeen())
            {
                if(GetIsEnemy(GetLastPerceived()))
                {
                    float fDelay = GetDistanceBetween(OBJECT_SELF, oPerceived);
                    fDelay = fDelay/10.0;
                    DelayCommand(fDelay/2.0, SetFacingPoint(GetPosition(oPerceived)));
                    
                    SpeakString("GEN_I_WAS_ATTACKED", TALKVOLUME_SILENT_TALK);
                    GN_MyPrintString("GENERIC DEBUG *************** Determine Combat Round from On Perception 2");
                    DelayCommand(fDelay, GN_DetermineCombatRound());
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
