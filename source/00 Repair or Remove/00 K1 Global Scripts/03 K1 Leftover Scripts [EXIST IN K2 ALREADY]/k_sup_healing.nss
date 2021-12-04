//:: k_sup_healing
/*
    Script for the 3 healing
    kits and the remove poison
    kit
*/
//:: Created By: Preston Watamaniuk
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"
#include "k_inc_force"

void main()
{
    int nItem = GetSpellId();
    int nSkill = GetSkillRank(SKILL_TREAT_INJURY);
    effect eHeal;
    int bHeal = TRUE;
    if(nItem == 64)
    {
        nSkill += 10 + GetAbilityModifier(ABILITY_WISDOM);
    }
    else if(nItem == 65)
    {
        nSkill = 20 + (nSkill * 2) + GetAbilityModifier(ABILITY_WISDOM);
    }
    else if(nItem == 66)
    {
        nSkill = 30 + (nSkill * 3) + GetAbilityModifier(ABILITY_WISDOM);
    }
    else if(nItem == 67)
    {
        Sp_RemoveSpecificEffect(EFFECT_TYPE_POISON, OBJECT_SELF);
        bHeal = FALSE;
    }
    else if(nItem == 84)
    {
        nSkill = GetSkillRank(SKILL_REPAIR) + GetAbilityModifier(ABILITY_INTELLIGENCE) + 15;
    }
    else if(nItem == 127)
    {
        nSkill = (GetSkillRank(SKILL_REPAIR) * 2 ) + GetAbilityModifier(ABILITY_INTELLIGENCE) + 25;
    }
    else if(nItem == 128)
    {
        nSkill = (GetSkillRank(SKILL_REPAIR) * 3 ) + GetAbilityModifier(ABILITY_INTELLIGENCE) + 35;
    }
    else if(nItem == 129)//Recovery Stim
    {
        bHeal = FALSE;
        int nHeal = 30;
        effect eVis =  EffectVisualEffect(VFX_IMP_CURE);
        int nCnt = 0;
        object oParty;

        oParty = GetPartyMemberByIndex(nCnt);
        while(nCnt < 3)
        {
            if(GetIsObjectValid(oParty))
            {
                if(GetIsDead(oParty))
                {
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectResurrection(), oParty);
                }
                ApplyEffectToObject(DURATION_TYPE_INSTANT, eVis, oParty);
                ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectHeal(nHeal), oParty);
            }
            nCnt++;
            oParty = GetPartyMemberByIndex(nCnt);
        }
    }
    if(bHeal == TRUE)
    {
        eHeal = EffectHeal(nSkill);
        ApplyEffectToObject(DURATION_TYPE_INSTANT, eHeal, OBJECT_SELF);
        if(GetTag(OBJECT_SELF) == "HK47")
        {
            ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(1048), OBJECT_SELF);
        }
    }
}
