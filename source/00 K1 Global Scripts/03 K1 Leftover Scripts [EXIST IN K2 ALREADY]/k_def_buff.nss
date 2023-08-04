//::///////////////////////////////////////////////
//:: k_def_buff
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Buffs the target object based on the level of
    the main PC.

    Jedi (class) will get the following:
    Player Level 12+: +4 to Wisdom, +4 to Charisma, +50 Force Points, +50 Vitality Points.
    Player Level 15+: +6 to Wisdom, +6 to Charisma, +100 Force Points, +100 Vitality Points.

    Beasts (subrace) will get the following:
    Player Level 12+: +6 strength, +60 Vitality points.
    Player Level 15+: +10 strength, +120 Vitality points.

    Droids (race) will get the following:
    Player Level 12+: +6 Dexterity, +60 Vitality points.
    Player Level 15+: +10 Dexterity, +100 Vitality points.

    Scoundrel, Soldier, Scout (class):
    Player Level 12+: +4 Dexterity, +4 Strength, +50 Vitality points.
    Player Level 15+: +6 Dexterity, +6 Strength, +100 Vitality points.

*/
//:://////////////////////////////////////////////
//:: Created By: Preston Watamaniuk
//:: Created On: April 8, 2003
//:://////////////////////////////////////////////
//
void main()
{
    int nCharLevel = GetHitDice(GetFirstPC());
    int bValid = TRUE;
    effect eStatA, eStatB, eFP, eVP, eLink;
    int nVP;

    //Apply the effects based on the type of creature.
    //JEDIS
    if(GetLevelByClass(CLASS_TYPE_JEDICONSULAR) > 0 ||
       GetLevelByClass(CLASS_TYPE_JEDIGUARDIAN) > 0 ||
       GetLevelByClass(CLASS_TYPE_JEDISENTINEL) > 0)
    {
        //Set up the effects based on the character level
        if(nCharLevel >= 12 && nCharLevel <= 14)
        {
            eStatA = EffectAbilityIncrease(ABILITY_WISDOM, 4);
            eStatB = EffectAbilityIncrease(ABILITY_DEXTERITY, 4);
            eFP = EffectTemporaryForcePoints(50);
            nVP = 50;
            //eVP = EffectTemporaryHitpoints(50);
        }
        else if(nCharLevel >= 15)
        {
            eStatA = EffectAbilityIncrease(ABILITY_WISDOM, 6);
            eStatB = EffectAbilityIncrease(ABILITY_DEXTERITY, 6);
            eFP = EffectTemporaryForcePoints(100);
            nVP = 100;
            //eVP = EffectTemporaryHitpoints(100);
        }
        else
        {
            bValid = FALSE;
        }
        if(bValid == TRUE)
        {
            eLink = EffectLinkEffects(eStatA, eStatB);
            eLink = EffectLinkEffects(eLink, eFP);
        }
    }
    //BEASTS
    else if(GetSubRace(OBJECT_SELF) == 2) //SUBRACE_BEAST
    {
        if(nCharLevel >= 12 && nCharLevel <= 14)
        {
            eStatA = EffectAbilityIncrease(ABILITY_STRENGTH, 6);
            //eVP = EffectTemporaryHitpoints(60);
            nVP = 60;
        }
        else if(nCharLevel >= 15)
        {
            eStatA = EffectAbilityIncrease(ABILITY_STRENGTH, 10);
            //eVP = EffectTemporaryHitpoints(100);
            nVP = 100;
        }
        else
        {
            bValid = FALSE;
        }
        if(bValid == TRUE)
        {
            eLink = eStatA;
        }
    }
    //DROIDS
    else if(GetRacialType(OBJECT_SELF) == RACIAL_TYPE_DROID)
    {
        if(nCharLevel >= 12 && nCharLevel <= 14)
        {
            eStatA = EffectAbilityIncrease(ABILITY_DEXTERITY, 6);
            //eVP = EffectTemporaryHitpoints(60);
            nVP = 60;
        }
        else if(nCharLevel >= 15)
        {
            eStatA = EffectAbilityIncrease(ABILITY_DEXTERITY, 10);
            //eVP = EffectTemporaryHitpoints(100);
            nVP = 100;
        }
        else
        {
            bValid = FALSE;
        }
        if(bValid == TRUE)
        {
            eLink = eStatA;
        }
    }
    else
    {
        //Set up the effects based on the character level
        if(nCharLevel >= 12 && nCharLevel <= 14)
        {
            eStatA = EffectAbilityIncrease(ABILITY_STRENGTH, 4);
            eStatB = EffectAbilityIncrease(ABILITY_DEXTERITY, 4);
            //eVP = EffectTemporaryHitpoints(50);
            nVP = 50;
        }
        else if(nCharLevel >= 15)
        {
            eStatA = EffectAbilityIncrease(ABILITY_STRENGTH, 6);
            eStatB = EffectAbilityIncrease(ABILITY_DEXTERITY, 6);
            //eVP = EffectTemporaryHitpoints(100);
            nVP = 100;
        }
        else
        {
            bValid = FALSE;
        }
        if(bValid == TRUE)
        {
            eLink = EffectLinkEffects(eStatA, eStatB);
            //eLink = EffectLinkEffects(eLink, eVP);
        }
    }
    if(nVP > 0)
    {
        nVP = GetMaxHitPoints(OBJECT_SELF) + nVP;
        SetMaxHitPoints(OBJECT_SELF, nVP);
        
    }
    if(bValid == TRUE)
    {
        ApplyEffectToObject(DURATION_TYPE_PERMANENT, eLink, OBJECT_SELF);
    }
}
