//:: k_sup_droid
/*
     Droid Ability Scripts
*/
//:: Created By: Preston Watamaniuk
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

void CUSTOM_GravityGen(int nSpell, int nCounter);

void main()
{
    int nSpell = GetSpellId();
    int nDC, nDamage;
    float fDuration;
    object oTarget;
    effect eBeam, eDam;

    if(nSpell == 116 || nSpell == 117) //DROID_ITEM_STUN_RAY_1 ot DROID_ITEM_STUN_RAY_2
    {
        oTarget = GetSpellTargetObject();
        if(nSpell == 116) {nDC = 15;}
        else if(nSpell == 117) {nDC = 20;}
        effect eStun = EffectStunned();
        eStun = SetEffectIcon(eStun, 55);
        eBeam = EffectBeam(2052, OBJECT_SELF, BODY_NODE_HAND); //Stun Ray Beam
        ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eBeam, oTarget, 1.0);
        if(!WillSave(oTarget, nDC, SAVING_THROW_TYPE_MIND_AFFECTING))
        {
            ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eStun, oTarget, RoundsToSeconds(3));
        }
    }
    else if(nSpell == 118 || nSpell == 119) //Disruptor Ray 1 and 2
    {
        oTarget = GetSpellTargetObject();
        if(nSpell == 118) {nDamage = 20;}
        else if(nSpell == 119) {nDamage = 40;}
        eDam = EffectDamage(nDamage, DAMAGE_TYPE_ION);
        effect eBeam1 = EffectBeam(2049, OBJECT_SELF, BODY_NODE_HAND); //Ion Beam 1
        effect eBeam2 = EffectBeam(2050, OBJECT_SELF, BODY_NODE_HAND); //Ion Beam 2
        ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eBeam2, oTarget, 1.0);
        ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eBeam1, oTarget, 1.0);
        ApplyEffectToObject(DURATION_TYPE_INSTANT, eDam, oTarget);
    }
    else if(nSpell == 120 || nSpell == 121) //Flame Throw 1 and 2
    {
        oTarget = GetSpellTargetObject();
        if(nSpell == 120) {nDamage = 30; nDC = 15;}
        else if(nSpell == 121) {nDamage = 60; nDC = 20;}
        eBeam = EffectBeam(2053, OBJECT_SELF, BODY_NODE_HAND); //Flame Thrower
        effect eVFX = EffectVisualEffect(1039);
        effect eBump = EffectVisualEffect(2062);
        effect eHorror = EffectHorrified();
        eHorror = SetEffectIcon(eHorror, 57);
        ApplyEffectToObject(DURATION_TYPE_INSTANT, eVFX, oTarget);
        ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eBeam, oTarget, 1.0);
        if(GetHitDice(oTarget) < 7 || FortitudeSave(oTarget, 15) == FALSE)
        {
            ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eHorror, oTarget, 3.0);
        }
        DelayCommand(0.33, ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eBump, oTarget, 1.5));
        if(ReflexSave(oTarget, nDC, SAVING_THROW_TYPE_FIRE))
        {
            nDamage /= 2;
        }
        eDam = EffectDamage(nDamage, DAMAGE_TYPE_FIRE);
        ApplyEffectToObject(DURATION_TYPE_INSTANT, eDam, oTarget);
    }
    else if(nSpell == 122 || nSpell == 123) //Carbonite Gun 1 and 2
    {
        oTarget = GetSpellTargetObject();
        if(nSpell == 122) {nDamage = 20; nDC = 15; fDuration = 9.0;}
        else if(nSpell == 123) {nDamage = 40; nDC = 20; fDuration = 15.0;}
        eBeam = EffectBeam(2051, OBJECT_SELF, BODY_NODE_HAND); //Carbonite Ray
        effect eIce = EffectVisualEffect(2055);                //Ice chunks
        effect eSolid = EffectVisualEffect(2054);             //Ice Bumpout
        effect eStuck;
        if(GetRacialType(oTarget) != RACIAL_TYPE_DROID)
        {
            eStuck = EffectParalyze();
        }
        else
        {
            eStuck = EffectDroidStun();
        }
        eStuck = SetEffectIcon(eStuck, 59);

        ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eBeam, oTarget, 1.0);
        if(ReflexSave(oTarget, nDC, SAVING_THROW_TYPE_COLD))
        {
            nDamage /= 2;
            fDuration = fDuration - 6.0;
        }
        ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eSolid, oTarget, fDuration);
        ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eIce, oTarget, fDuration);
        eDam = EffectDamage(nDamage, DAMAGE_TYPE_COLD);
        ApplyEffectToObject(DURATION_TYPE_INSTANT, eDam, oTarget);
        ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eStuck, oTarget, fDuration);
    }
    else if(nSpell == 124 || nSpell == 125)
    {
        CUSTOM_GravityGen(nSpell, 13);
    }
}

void CUSTOM_GravityGen(int nSpell, int nCounter)
{
    int nDC;
    object oTarget;
    if(nSpell == 124) {nDC = 15;}
    else if(nSpell == 125) {nDC = 20;}

    effect eVis = EffectVisualEffect(3013);//Gravity Generator FNF;
    effect eVis2 = EffectVisualEffect(3018);// More Better Gravity Generator FNF;
    //Start Link
    effect eSpeed = EffectMovementSpeedDecrease(75);
    effect eAC = EffectACDecrease(4);
    effect eSlow = EffectLinkEffects(eSpeed, eAC);
    //effect eLink = EffectLinkEffects(eSpeed, eAC);
    //eLink = EffectLinkEffects(eLink, eSlow);
    eSlow = SetEffectIcon(eSlow, 61);

    ApplyEffectToObject(DURATION_TYPE_INSTANT, eVis, OBJECT_SELF);
    ApplyEffectToObject(DURATION_TYPE_INSTANT, eVis2, OBJECT_SELF);
    oTarget = GetFirstObjectInShape(SHAPE_SPHERE, 15.0, GetLocation(OBJECT_SELF));
    while(GetIsObjectValid(oTarget))
    {
        if(GetIsEnemy(oTarget))
        {
            if(!ReflexSave(oTarget, nDC))
            {
                if(!GetHasSpellEffect(124) && !GetHasSpellEffect(125))
                {
                    ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eSlow, oTarget, 9.0);
                }
            }
        }
        oTarget = GetNextObjectInShape(SHAPE_SPHERE, 15.0, GetLocation(OBJECT_SELF));
    }
    /*
    if(nCounter >= 3 && GetIsObjectValid(OBJECT_SELF))
    {
        nCounter = nCounter - 3;
        float fDelay = 12.0 - IntToFloat(nCounter);
        DelayCommand(fDelay, CUSTOM_GravityGen(nSpell, nCounter));
    }
    */
}
