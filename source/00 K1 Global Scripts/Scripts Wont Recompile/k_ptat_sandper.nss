//:: k_ptat_sandper
/*
     This script is for the sandperson disguise.
     The party can apply or remove the disguise
     by using the item.
*/
//:: Created By: John Winski
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"

void main()
{
    object oParty1 = GetPartyMemberByIndex(0);
    object oParty2 = GetPartyMemberByIndex(1);
    object oParty3 = GetPartyMemberByIndex(2);
    object oTuskan = GetObjectByTag("tat18_tuskanfac");

    if (IsNPCPartyMember(NPC_ZAALBAR) == FALSE &&
        IsNPCPartyMember(NPC_T3_M4) == FALSE)
    {
        if (GetGlobalBoolean("tat_TuskenSuit") == FALSE &&
            GetGlobalBoolean("tat_TuskenMad") == FALSE)
        {
            AdjustReputation(oParty1, oTuskan, 50);
            ApplyEffectToObject(DURATION_TYPE_PERMANENT, EffectDisguise(46), oParty1);

            if (GetIsObjectValid(oParty2) == TRUE)
            {
                ApplyEffectToObject(DURATION_TYPE_PERMANENT, EffectDisguise(46), oParty2);
            }
            if (GetIsObjectValid(oParty3) == TRUE)
            {
                ApplyEffectToObject(DURATION_TYPE_PERMANENT, EffectDisguise(46), oParty3);
            }
            SetGlobalBoolean("tat_TuskenSuit", TRUE);
        }
        else if (GetGlobalBoolean("tat_TuskenSuit") == TRUE)
        {
            AdjustReputation(oParty1, oTuskan, -50);
            SetGlobalBoolean("tat_TuskenSuit", FALSE);

            effect eEffect = GetFirstEffect(oParty1);

            while (GetIsEffectValid(eEffect) == TRUE)
            {
                if (GetEffectType(eEffect) == EFFECT_TYPE_DISGUISE)
                {
                    RemoveEffect(oParty1, eEffect);
                }
                eEffect = GetNextEffect(oParty1);
            }
            if (GetIsObjectValid(oParty2) == TRUE)
            {
                eEffect = GetFirstEffect(oParty2);

                while (GetIsEffectValid(eEffect) == TRUE)
                {
                    if (GetEffectType(eEffect) == EFFECT_TYPE_DISGUISE)
                    {
                        RemoveEffect(oParty2, eEffect);
                    }
                    eEffect = GetNextEffect(oParty2);
                }
            }
            if (GetIsObjectValid(oParty3) == TRUE)
            {
                eEffect = GetFirstEffect(oParty3);

                while (GetIsEffectValid(eEffect) == TRUE)
                {
                    if (GetEffectType(eEffect) == EFFECT_TYPE_DISGUISE)
                    {
                        RemoveEffect(oParty3, eEffect);
                    }
                    eEffect = GetNextEffect(oParty3);
                }
            }
        }
    }
}
