//:: k_sup_comshots
/*
    Support script for the Adrenal and Combat Shots
69	ITEM_ABILITY_ADRENAL_SHOT_STRENGTH
70	ITEM_ABILITY_ADRENAL_SHOT_ALACRITY
71	ITEM_ABILITY_ADRENAL_SHOT_STAMINA
72	ITEM_ABILITY_HYPER_ADRENAL_SHOT_STRENGTH
73	ITEM_ABILITY_HYPER_ADRENAL_SHOT_ALACRITY
74	ITEM_ABILITY_HYPER_ADRENAL_SHOT_STAMINA
75	ITEM_ABILITY_COMBAT_SHOT_1
76	ITEM_ABILITY_COMBAT_SHOT_2
77	ITEM_ABILITY_COMBAT_SHOT_3
    
*/
//:: Created By: Preston Watamaniuk
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

//This makes sure that duplicate versions of various shots do not overlap.
int CUSTOM_DupEffect(int nSpellID);

void main()
{
    int nID = GetSpellId();
    effect eBonusHP;
    effect eLink;
    int nIcon;
    if(!CUSTOM_DupEffect(nID))
    {
        if(nID == 69)
        {
            eLink = EffectAbilityIncrease(ABILITY_STRENGTH, 4);
            nIcon = 32;
        }
        else if(nID == 70)
        {
            eLink = EffectAbilityIncrease(ABILITY_DEXTERITY, 4);
            eLink = EffectLinkEffects(eLink, EffectMovementSpeedIncrease(20));
            nIcon = 33;
        }
        else if(nID == 71)
        {
            eLink = EffectAbilityIncrease(ABILITY_CONSTITUTION, 4);
            nIcon = 34;
        }
        else if(nID == 72)
        {
            eLink = EffectAbilityIncrease(ABILITY_STRENGTH, 6);
            nIcon = 35;
        }
        else if(nID == 73)
        {
            eLink = EffectAbilityIncrease(ABILITY_DEXTERITY, 6);
            eLink = EffectLinkEffects(eLink, EffectMovementSpeedIncrease(30));
            nIcon = 36;
        }
        else if(nID == 74)
        {
            eLink = EffectAbilityIncrease(ABILITY_CONSTITUTION, 6);
            nIcon = 37;
        }
        else if(nID == 75)
        {
            eBonusHP = EffectTemporaryHitpoints(8);
            eLink = EffectAttackIncrease(1);
            eLink = EffectLinkEffects(eLink, EffectDamageIncrease(1, DAMAGE_TYPE_UNIVERSAL));
            nIcon = 38;
        }
        else if(nID == 76)
        {
            eBonusHP = EffectTemporaryHitpoints(16);
            eLink = EffectAttackIncrease(2);
            eLink = EffectLinkEffects(eLink, EffectDamageIncrease(2, DAMAGE_TYPE_UNIVERSAL));
            nIcon = 39;
        }
        else if(nID == 77)
        {
            eBonusHP = EffectTemporaryHitpoints(25);
            eLink = EffectAttackIncrease(3);
            eLink = EffectLinkEffects(eLink, EffectDamageIncrease(3, DAMAGE_TYPE_UNIVERSAL));
            nIcon = 40;
        }
        eLink = SetEffectIcon(eLink, nIcon);

        ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eLink, GetSpellTargetObject(), 120.0);

        if(nID == 75 || nID == 76 || nID == 77)
        {
            ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eBonusHP, GetSpellTargetObject(), 120.0);
        }
    }
}

int CUSTOM_DupEffect(int nSpellID)
{
    if(nSpellID == 69 || nSpellID == 72)
    {
        if(GetHasSpellEffect(69) || GetHasSpellEffect(72))
        {
            return TRUE;
        }
    }
    else if(nSpellID == 70 || nSpellID == 73)
    {
        if(GetHasSpellEffect(70) || GetHasSpellEffect(73))
        {
            return TRUE;
        }
    }
    else if(nSpellID == 71 || nSpellID == 74)
    {
        if(GetHasSpellEffect(71) || GetHasSpellEffect(74))
        {
            return TRUE;
        }
    }
    else if(nSpellID == 75 || nSpellID == 76 || nSpellID == 77)
    {
        if(GetHasSpellEffect(75) || GetHasSpellEffect(76) || GetHasSpellEffect(77))
        {
            return TRUE;
        }
    }
    return FALSE;
}
