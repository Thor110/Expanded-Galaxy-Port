//:: k_hen_canduser
/*
     Custom User Defined Events
     for Canderous
*/
//:: Created By: Preston Watamaniuk
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_generic"
#include "k_inc_debug"
#include "k_inc_utility"

void main()
{
    int nUser = GetUserDefinedEventNumber();

    if(nUser == 1001) //HEARTBEAT
    {
        if(!GetIsInCombat())
        {
            GN_SetSpawnInCondition(SW_CANDEROUS_COMBAT_REGEN);
        }
    }
    else if(nUser == 1002) // PERCEIVE
    {

    }
    else if(nUser == 1003) // END OF COMBAT
    {

    }
    else if(nUser == 1004) // ON DIALOGUE
    {

    }
    else if(nUser == 1005) // ATTACKED
    {

    }
    else if(nUser == 1006) // DAMAGED
    {

    }
    else if(nUser == 1007) // DEATH
    {
        if(GN_GetSpawnInCondition(SW_CANDEROUS_COMBAT_REGEN))
        {
            effect eRaise = EffectResurrection();
            float fHP = IntToFloat(GetMaxHitPoints(OBJECT_SELF));
            fHP = (fHP/100.0) * 2.0;
            int nHP = FloatToInt(fHP);
            if(nHP < 1)
            {
                nHP == 1;
            }
            effect eRegen = EffectRegenerate(nHP, 42.0);
            effect eCon = EffectAbilityIncrease(ABILITY_CONSTITUTION, 2);
            effect eStr = EffectAbilityIncrease(ABILITY_STRENGTH, 2);
            effect eHit = EffectAttackIncrease(2);
            effect eDam = EffectDamageIncrease(2);
            effect eLink1 = EffectLinkEffects(eRegen, eCon);
            effect eLink2 = EffectLinkEffects(eStr, eHit);
            eLink1 = EffectLinkEffects(eLink1, eDam);
            eLink1 = EffectLinkEffects(eLink1, eLink2);
            
            DelayCommand(12.0, ApplyEffectToObject(DURATION_TYPE_INSTANT, eRaise, OBJECT_SELF));
            ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eLink1, OBJECT_SELF, 42.0);
            GN_SetSpawnInCondition(SW_CANDEROUS_COMBAT_REGEN, FALSE);
        }
    }
    else if(nUser == 1008) // DISTURBED
    {

    }
    else if(nUser == 1009) // BLOCKED
    {

    }
    else if(nUser == 1010) // SPELL CAST AT
    {

    }
    else if(nUser == HOSTILE_RETREAT)
    {
        UT_ReturnToBase();
    }
}



