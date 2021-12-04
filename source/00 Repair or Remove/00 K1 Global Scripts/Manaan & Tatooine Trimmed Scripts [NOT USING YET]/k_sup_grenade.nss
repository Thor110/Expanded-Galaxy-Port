//:: k_sup_grenade
/*
    Grenade Support Script
    for all of the grenades in
    the game
*/
//:: Created By: Preston Watamaniuk
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"
#include "k_inc_force"

//Get the DC for the grenade based on the targets feats.
int GR_GetGrenadeDC(object oTarget);

void main()
{
    int nSpell = GetSpellId();
    int nDamage;
    int nDC;
    int nDCCheck;
    object oTarget;
    int nVFX;
    int nFeat = GetHasFeat(FEAT_WEAPON_SPECIALIZATION_GRENADE);
    int nUnc1 = GetHasFeat(FEAT_UNCANNY_DODGE_1);
    int nUnc2 = GetHasFeat(FEAT_UNCANNY_DODGE_2);

    if(nFeat == TRUE)
    {
        nFeat = 6;
    }
    if(nSpell == 87) //Fragmentation
    {
        ApplyEffectAtLocation(DURATION_TYPE_INSTANT, EffectVisualEffect(1044),GetSpellTargetLocation());
        nVFX = 3003;
        nDamage = 20 + nFeat;
        nDC = 15;

        oTarget = GetFirstObjectInShape(SHAPE_SPHERE, 4.0, GetSpellTargetLocation());
        while(GetIsObjectValid(oTarget))
        {
            if(!GetIsNeutral(oTarget))
            {
                SignalEvent(oTarget, EventSpellCastAt(OBJECT_SELF, GetSpellId(), SWFP_HARMFUL));
                nDCCheck = nDC;
                nDCCheck -= GR_GetGrenadeDC(oTarget);
                if(!ReflexSave(oTarget, nDCCheck, SAVING_THROW_TYPE_NONE))
                {
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDamage(nDamage, DAMAGE_TYPE_PIERCING), oTarget);
                }
                else
                {
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDamage(nDamage/2, DAMAGE_TYPE_PIERCING), oTarget);
                }
            }
            oTarget = GetNextObjectInShape(SHAPE_SPHERE, 4.0, GetSpellTargetLocation());
        }
    }
    else if(nSpell == 88) //Stun Grenade
    {
        nVFX = 3004;
        nDC = 15;

        effect eStun = EffectStunned();
        effect eDroidStun = EffectDroidStun();
        eStun = SetEffectIcon(eStun, 41);
        eStun = EffectLinkEffects(eStun, EffectVisualEffect(VFX_IMP_STUN));
        
        oTarget = GetFirstObjectInShape(SHAPE_SPHERE, 4.0, GetSpellTargetLocation());
        while(GetIsObjectValid(oTarget))
        {
            if(!GetIsNeutral(oTarget))
            {
                SignalEvent(oTarget, EventSpellCastAt(OBJECT_SELF, GetSpellId(), SWFP_HARMFUL));
                nDCCheck = nDC;
                nDCCheck -= GR_GetGrenadeDC(oTarget);
                if(!WillSave(oTarget, nDCCheck, SAVING_THROW_TYPE_SONIC))
                {
                    if(GetRacialType(oTarget) == RACIAL_TYPE_DROID)
                    {
                        ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eDroidStun, oTarget, 9.0);
                    }
                    else
                    {
                        if(!GetIsLinkImmune(oTarget, eStun))
                        {
                           ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eStun, oTarget, 9.0);
                        }
                    }
                }
            }
            oTarget = GetNextObjectInShape(SHAPE_SPHERE, 4.0, GetSpellTargetLocation());
        }
    }
    else if(nSpell == 89)///Thermal Detonator
    {
        ApplyEffectAtLocation(DURATION_TYPE_INSTANT, EffectVisualEffect(1044),GetSpellTargetLocation());
        nVFX = 3005;
        nDamage = 60 + nFeat;
        nDC = 15;
        effect ePush = EffectForcePushTargeted(GetSpellTargetLocation());

        oTarget = GetFirstObjectInShape(SHAPE_SPHERE, 4.0, GetSpellTargetLocation());
        while(GetIsObjectValid(oTarget))
        {
            if(!GetIsNeutral(oTarget))
            {
                SignalEvent(oTarget, EventSpellCastAt(OBJECT_SELF, GetSpellId(), SWFP_HARMFUL));
                nDCCheck = nDC;
                nDCCheck -= GR_GetGrenadeDC(oTarget);
                if(!ReflexSave(oTarget, nDCCheck, SAVING_THROW_TYPE_BLASTER))
                {
                    DelayCommand(0.5, ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDamage(nDamage, DAMAGE_TYPE_BLASTER), oTarget));
                }
                else
                {
                    DelayCommand(0.5, ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDamage(nDamage/2, DAMAGE_TYPE_BLASTER), oTarget));
                }
                ApplyEffectToObject(DURATION_TYPE_TEMPORARY, ePush, oTarget, 0.1);
            }
            oTarget = GetNextObjectInShape(SHAPE_SPHERE, 4.0, GetSpellTargetLocation());
        }
    }
    else if(nSpell == 90)//Poison Grenade
    {
        nVFX = 3006;
        effect ePoison = EffectPoison(POISON_DAMAGE_AVERAGE);
        oTarget = GetFirstObjectInShape(SHAPE_SPHERE, 4.0, GetSpellTargetLocation());
        while(GetIsObjectValid(oTarget) && GetRacialType(oTarget) != RACIAL_TYPE_DROID)
        {
            if(!GetIsNeutral(oTarget))
            {
                SignalEvent(oTarget, EventSpellCastAt(OBJECT_SELF, GetSpellId(), SWFP_HARMFUL));
                if(!GetIsPoisoned(oTarget))
                {
                    ApplyEffectToObject(DURATION_TYPE_PERMANENT, ePoison, oTarget);
                }
            }
            oTarget = GetNextObjectInShape(SHAPE_SPHERE, 4.0, GetSpellTargetLocation());
        }
    }
    else if(nSpell == 91) //Sonic Grenade
    {
        nVFX = 3007;
        nDamage = 20 + nFeat;
        nDC = 15;
        effect eDex = EffectAbilityDecrease(ABILITY_DEXTERITY, 6);
        eDex = SetEffectIcon(eDex, 41);
        oTarget = GetFirstObjectInShape(SHAPE_SPHERE, 4.0, GetSpellTargetLocation());
        while(GetIsObjectValid(oTarget))
        {
            if(!GetIsNeutral(oTarget))
            {
                SignalEvent(oTarget, EventSpellCastAt(OBJECT_SELF, GetSpellId(), SWFP_HARMFUL));
                nDCCheck = nDC;
                nDCCheck -= GR_GetGrenadeDC(oTarget);
                if(!WillSave(oTarget, nDCCheck, SAVING_THROW_TYPE_SONIC))
                {
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDamage(nDamage, DAMAGE_TYPE_SONIC), oTarget);
                    ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eDex, oTarget, 30.0);
                }
                else
                {
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDamage(nDamage/2, DAMAGE_TYPE_SONIC), oTarget);
                }
            }
            oTarget = GetNextObjectInShape(SHAPE_SPHERE, 4.0, GetSpellTargetLocation());
        }
    }
    else if(nSpell == 92) //Adhesive
    {
        nVFX = 3008;
        effect eDex = EffectEntangle();
        eDex = SetEffectIcon(eDex, 43);
        effect eGoo = EffectVisualEffect(1038);

        oTarget = GetFirstObjectInShape(SHAPE_SPHERE, 4.0, GetSpellTargetLocation());
        while(GetIsObjectValid(oTarget))
        {
            if(!GetIsNeutral(oTarget))
            {
                SignalEvent(oTarget, EventSpellCastAt(OBJECT_SELF, GetSpellId(), SWFP_HARMFUL));
                if(!GetIsLinkImmune(oTarget, eDex) || GetRacialType(oTarget) == RACIAL_TYPE_DROID)
                {
                    ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eDex, oTarget, 15.0);
                    DelayCommand(0.8, ApplyEffectAtLocation(DURATION_TYPE_INSTANT, eGoo, GetLocation(oTarget)));
                }
            }
            oTarget = GetNextObjectInShape(SHAPE_SPHERE, 4.0, GetSpellTargetLocation());
        }
    }
    else if(nSpell == 93) //Cryoban
    {
        nVFX = 3009;
        nDamage = 20 + nFeat;
        nDC = 15;

        effect eDex = EffectParalyze();
        oTarget = GetFirstObjectInShape(SHAPE_SPHERE, 4.0, GetSpellTargetLocation());
        while(GetIsObjectValid(oTarget))
        {
            if(!GetIsNeutral(oTarget))
            {
                SignalEvent(oTarget, EventSpellCastAt(OBJECT_SELF, GetSpellId(), SWFP_HARMFUL));
                nDCCheck = nDC;
                nDCCheck -= GR_GetGrenadeDC(oTarget);
                if(!ReflexSave(oTarget, nDCCheck, SAVING_THROW_TYPE_COLD))
                {
                    if(!GetIsLinkImmune(oTarget, eDex) || GetRacialType(oTarget) == RACIAL_TYPE_DROID)
                    {
                        eDex = SetEffectIcon(eDex, 44);
                        //Need a cold duration effect for this.
                        ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eDex, oTarget, 6.0);
                    }
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDamage(nDamage, DAMAGE_TYPE_COLD), oTarget);
                }
                else
                {
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDamage(nDamage/2, DAMAGE_TYPE_COLD), oTarget);
                }
            }
            oTarget = GetNextObjectInShape(SHAPE_SPHERE, 4.0, GetSpellTargetLocation());
        }
    }
    else if(nSpell == 94) //Plasma
    {
        ApplyEffectAtLocation(DURATION_TYPE_INSTANT, EffectVisualEffect(1044),GetSpellTargetLocation());
        nVFX = 3010;
        nDamage = 36 + nFeat;
        nDC = 15;

        effect eHorror = EffectHorrified();
        effect eFlame = EffectVisualEffect(VFX_IMP_FLAME);
        oTarget = GetFirstObjectInShape(SHAPE_SPHERE, 4.0, GetSpellTargetLocation());
        while(GetIsObjectValid(oTarget))
        {
            if(!GetIsNeutral(oTarget))
            {
                SignalEvent(oTarget, EventSpellCastAt(OBJECT_SELF, GetSpellId(), SWFP_HARMFUL));
                nDCCheck = nDC;
                nDCCheck -= GR_GetGrenadeDC(oTarget);
                if(!ReflexSave(oTarget, nDCCheck, SAVING_THROW_TYPE_FIRE))
                {
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDamage(nDamage, DAMAGE_TYPE_FIRE), oTarget);
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, eFlame, oTarget);
                    ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eHorror, oTarget, 2.0);
                }
                else
                {
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDamage(nDamage/2, DAMAGE_TYPE_FIRE), oTarget);
                }
            }
            oTarget = GetNextObjectInShape(SHAPE_SPHERE, 4.0, GetSpellTargetLocation());
        }
    }
    else if(nSpell == 95) //Ion
    {
        nVFX = 3011;
        nDamage = 15 + nFeat;
        int nRealDamage;
        nDC = 15;

        oTarget = GetFirstObjectInShape(SHAPE_SPHERE, 4.0, GetSpellTargetLocation());
        while(GetIsObjectValid(oTarget))
        {
            nDamage = 15 + nFeat;
            if(!GetIsNeutral(oTarget))
            {
                SignalEvent(oTarget, EventSpellCastAt(OBJECT_SELF, GetSpellId(), SWFP_HARMFUL));
                nDCCheck = nDC;
                nDCCheck -= GR_GetGrenadeDC(oTarget);
                if(GetRacialType(oTarget) == RACIAL_TYPE_DROID)
                {
                    nDamage += 30;
                }
                if(!ReflexSave(oTarget, nDCCheck, SAVING_THROW_TYPE_ION))
                {
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDamage(nDamage, DAMAGE_TYPE_ION), oTarget);
                }
                else
                {
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDamage(nDamage/2, DAMAGE_TYPE_ION), oTarget);
                }
            }
            nRealDamage = nDamage;
            oTarget = GetNextObjectInShape(SHAPE_SPHERE, 4.0, GetSpellTargetLocation());
        }
    }
    ApplyEffectAtLocation(DURATION_TYPE_INSTANT, EffectVisualEffect(nVFX),GetSpellTargetLocation());
}

//Get the DC for the grenade based on the targets feats.
int GR_GetGrenadeDC(object oTarget)
{
    int nUnc1 = GetHasFeat(FEAT_UNCANNY_DODGE_1, oTarget);
    int nUnc2 = GetHasFeat(FEAT_UNCANNY_DODGE_2, oTarget);
    int nDC = 0;
    if(nUnc1 == TRUE)
    {
        nDC += 2;
        if(nUnc2 == TRUE)
        {
            nDC += 2;
        }
    }
    return nDC;
}
