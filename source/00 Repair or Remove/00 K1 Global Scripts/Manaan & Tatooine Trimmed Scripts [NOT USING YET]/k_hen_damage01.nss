//:: k_hen_damage01
/*
    Default On Damaged Script
*/
//:: Created By: Preston Watamaniuk
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_switch"
#include "k_inc_debug"

void main()
{
    ExecuteScript("k_ai_master", OBJECT_SELF, KOTOR_HENCH_EVENT_ON_DAMAGE);
    /*
    if(!GN_GetSpawnInCondition(SW_FLAG_AI_OFF))
    {
        if(GetFirstPC() == OBJECT_SELF &&
           GetGlobalBoolean("END_BRIDGE_COMBAT") &&
           GetGlobalBoolean("END_HURT_WARN") == FALSE)
        {
            SetGlobalBoolean("END_HURT_WARN",TRUE);
            BarkString(OBJECT_INVALID,10242);
            PauseGame(TRUE);

        }
        else if(GetPartyMemberByIndex(0) != OBJECT_SELF && !GetPlayerRestrictMode())
        {
            if(GetCurrentAction() != ACTION_FOLLOWLEADER)
            {
                if(!GetIsObjectValid(GetAttemptedAttackTarget()) && !GetIsObjectValid(GetAttemptedSpellTarget()))
                {
                    if(GetIsObjectValid(GetLastDamager()))
                    {
                        if(!GetIsInCombat())
                        {
                            GN_DetermineCombatRound();

                            if(!GN_GetIsFighting(OBJECT_SELF))
                            {
                                object oTarget = GetLastDamager();
                                if(!GetObjectSeen(oTarget) && GetArea(OBJECT_SELF) == GetArea(oTarget))
                                {
                                    ActionMoveToLocation(GetLocation(oTarget), TRUE);
                                    ActionDoCommand(GN_DetermineCombatRound());
                                }
                            }
                        }
                    }
                }
                else if (!GetIsObjectValid(GetAttemptedSpellTarget()))
                {
                    object oTarget = GetAttackTarget();
                    if(!GetIsObjectValid(oTarget))
                    {
                        oTarget = GetAttemptedAttackTarget();
                    }
                    object oAttacker = GetLastHostileActor();
                    if (GetIsObjectValid(oAttacker) && oTarget != oAttacker && GetIsEnemy(oAttacker) &&
                       (GetTotalDamageDealt() > (GetMaxHitPoints(OBJECT_SELF) / 4) ||
                        (GetHitDice(oAttacker) - 2) > GetHitDice(oTarget) ) )
                    {
                        GN_DetermineCombatRound(oAttacker);
                    }
                }
            }
        }
    }
    if(GN_GetSpawnInCondition(SW_FLAG_EVENT_ON_DAMAGED))
    {
        SignalEvent(OBJECT_SELF, EventUserDefined(1006));
    }
    */
}
