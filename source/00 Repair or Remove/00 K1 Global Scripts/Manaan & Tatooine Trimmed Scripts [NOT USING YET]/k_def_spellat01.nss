//:: k_def_spellat01
/*
    Default On Spell Cast At Event Script
*/
//:: Created By: Preston Watamaniuk
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_switch"
#include "k_inc_debug"

void main()
{
    ExecuteScript("k_ai_master", OBJECT_SELF, KOTOR_DEFAULT_EVENT_ON_FORCE_AFFECTED);
    /*
    object oCaster = GetLastSpellCaster();
    if(!GN_GetSpawnInCondition(SW_FLAG_AI_OFF))
    {
        if(GetLastSpellHarmful())
        {
            if(
             !GetIsObjectValid(GetAttackTarget()) &&
             !GetIsObjectValid(GetAttemptedSpellTarget()) &&
             !GetIsObjectValid(GetAttemptedAttackTarget()) &&
             GetIsObjectValid(GetNearestCreature(CREATURE_TYPE_REPUTATION, REPUTATION_TYPE_ENEMY, OBJECT_SELF, 1, CREATURE_TYPE_PERCEPTION, PERCEPTION_SEEN)) &&
             GetCommandable()
            )
            {
                GN_MyPrintString("GENERIC DEBUG *************** Determine Combat Round from On Spell Cast At");
                GN_DetermineCombatRound(oCaster);
                //Shout Attack my target, only works with the On Spawn In setup
                SpeakString("GEN_ATTACK_MY_TARGET", TALKVOLUME_SILENT_TALK);
                //Shout that I was attacked
                SpeakString("GEN_I_WAS_ATTACKED", TALKVOLUME_SILENT_TALK);
            }
        }
    }
    if(GN_GetSpawnInCondition(SW_FLAG_EVENT_ON_SPELL_CAST_AT))
    {
        SignalEvent(OBJECT_SELF, EventUserDefined(1010));
    }
    */
}

