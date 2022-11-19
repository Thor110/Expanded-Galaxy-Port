//:: k_inc_force
/*
    v1.0
    Force Powers Include for KOTOR
*/
//:: Created By: Preston Watamaniuk
//:: Copyright (c) 2002 Bioware Corp.

float fLightningDuration = 1.0;

//These variables are set in the script run area.
int SWFP_PRIVATE_SAVE_TYPE;
int SWFP_PRIVATE_SAVE_VERSUS_TYPE;
int SWFP_DAMAGE;
int SWFP_DAMAGE_TYPE;
int SWFP_DAMAGE_VFX;
int SWFP_HARMFUL;
int SWFP_SHAPE;

//Runs the script section for the particular force power.
void  Sp_RunForcePowers();
//Immunity and Resist Spell check for the force power.
//The eDamage checks whether the target is immune to the damage effect
int Sp_BlockingChecks(object oTarget, effect eEffect, effect eEffect2, effect eDamage);
//Makes the necessary saving throws
int Sp_MySavingThrows(object oTarget);
//Remove an effect of a specific type
void Sp_RemoveSpecificEffect(int nEffectTypeID, object oTarget);
//Remove an effect from a specific force power.
void Sp_RemoveSpellEffects(int nSpell_ID, object oCaster, object oTarget);
// Delays the application of a spell effect by an amount determined by distance.
float Sp_GetSpellEffectDelay(location SpellTargetLocation, object oTarget);
//Randomly delays the effect application for a default of 0.0 to 0.75 seconds
float Sp_GetRandomDelay(float fMinimumTime = 0.0, float MaximumTime = 0.75);
//Gets a saving throw appropriate to the jedi using the force power.
int Sp_GetJediDCSave();
///Apply effects in a sphere shape.
void Sp_SphereSaveHalf(object oAnchor, float fSize, int nCounter, effect eLink1, float fDuration1, effect eLink2, float fDuration);
//Apply effects to a single target.
void Sp_SingleTarget(object oAnchor, effect eLink1, float fDuration1, effect eLink2, float fDuration2);
//Apply effect to an area and negate on a save.
void Sp_SphereBlocking(object oAnchor, float fSize, int nCounter, effect eLink1, float fDuration1, effect eLink2, float fDuration);
// /Apply effect to an object and negate on a save.
void Sp_SingleTargetBlocking(object oAnchor, effect eLink1, float fDuration1, effect eLink2, float fDuration2);
//Apply effects for a for power.
void Sp_ApplyForcePowerEffects(float fTime, effect eEffect, object oTarget);
//Apply effects to targets.
void Sp_ApplyEffects(int nBlocking, object oAnchor, float fSize, int nCounter, effect eLink1, float fDuration1, effect eLink2, float fDuration2, int nRacial = RACIAL_TYPE_ALL);
//Removes all effects from the spells , Knights Mind, Mind Mastery and Battle Meditation
void Sp_RemoveBuffSpell();
//Prints a string for the spell stript
void SP_MyPrintString(string sString);
//Posts a string for the spell script
void SP_MyPostString(string sString, int n1 = 5, int n2 = 10, float fTime = 4.0);
//Interates through given a time period and a damage amount and hurts someone.  Checks if the person is in conversation.
void SP_InterativeDamage(effect eDamage, int nSecondsRemaining, object oTarget);
//Checks to see if the target is a Turret
int SP_CheckAppearanceTurret(object oTarget, int nFeedback = FALSE);
//Checks to see if the target is a Mark 1, 2, 4 or Spyder Droid
int SP_CheckAppearanceGeoDroid(object oTarget);
//Checks if the character already has Energy Resistance and Improved Energy Resistance
int SP_CheckEnergyResistance(object oTarget);
//This checks all of the delayed effect applications to make sure the target is still hostile and has not surrendered
void SP_MyApplyEffectToObject(int nDurationType, effect eEffect, object oTarget, float fDuration=0.0);
//Checks droids appearance type and if they have shields up
int SP_CheckAppearanceGeoDroidShields(object oTarget, int nFeedback = FALSE);
//Check push compatibility, if true is passed in for the Whirlwind an addition check for shields is made
int SP_CheckForcePushViability(object oTarget, int Whirlwind);
//Removes the spell's effects regardless of caster
void Sp_RemoveSpellEffectsGeneral(int nSpell_ID, object oTarget);


//::///////////////////////////////////////////////
//:: Apply Delayed Effect
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    This checks all of the delayed effect applications
    to make sure the target is still hostile and has
    not surrendered
*/
//:://////////////////////////////////////////////
//:: Created By: Preston Watamaniuk
//:: Created On: May 20, 2003
//:://////////////////////////////////////////////
void SP_MyApplyEffectToObject(int nDurationType, effect eEffect, object oTarget, float fDuration=0.0)
{
    if(GetIsEnemy(oTarget))
    {
        ApplyEffectToObject(nDurationType, eEffect, oTarget, fDuration);
    }
}

//::///////////////////////////////////////////////
//:: Interative Damage
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Interates through given a time period and a
    damage amount and hurts someone.  Checks if
    the person is in conversation.
*/
//:://////////////////////////////////////////////
//:: Created By: Preston Watamaniuk
//:: Created On: April 5, 2003
//:://////////////////////////////////////////////
void SP_InterativeDamage(effect eDamage, int nSecondsRemaining, object oTarget)
{
    if(GetIsObjectValid(oTarget))
    {
        if(!GetIsConversationActive() && !GetIsDead(oTarget) && GetIsEnemy(oTarget))
        {
             if (nSecondsRemaining % 2 == 0)
             {
                  ApplyEffectToObject(DURATION_TYPE_INSTANT, eDamage, oTarget);
             }
             --nSecondsRemaining;
             if (nSecondsRemaining > 0)
             {
                DelayCommand(1.0f, SP_InterativeDamage(eDamage, nSecondsRemaining, oTarget));
             }
        }
    }
}

//::///////////////////////////////////////////////
//:: Blocking Checks
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Does the Spell Resistance and Immunity
    Checks
*/
//:://////////////////////////////////////////////
//:: Created By: Preston Watamaniuk
//:: Created On: Aug 15, 2002
//:://////////////////////////////////////////////

int Sp_BlockingChecks(object oTarget, effect eEffect1, effect eEffect2, effect eDamage)
{
    int nReturn = FALSE;
    //MODIFIED by Preston Watamaniuk on April 11th
    //Put the immunity check in place for Force Powers.
    if(GetIsLinkImmune(oTarget, eEffect1) || GetIsLinkImmune(oTarget, eEffect2) || GetIsLinkImmune(oTarget, eDamage))
    {
        DisplayFeedBackText(oTarget, 1);
        nReturn = TRUE;
    }
    if(ResistForce(OBJECT_SELF, oTarget))
    {
        DisplayFeedBackText(oTarget, 0);
        nReturn = TRUE;
    }

    if(nReturn == TRUE)
    {
        ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectForceResisted(OBJECT_SELF), oTarget);
    }

    return nReturn;
}

int Sp_MySavingThrows(object oTarget)
{
    int nSave;
    if(SWFP_PRIVATE_SAVE_TYPE == SAVING_THROW_FORT)
    {
        nSave = FortitudeSave(oTarget, Sp_GetJediDCSave(), SWFP_PRIVATE_SAVE_VERSUS_TYPE);
        SP_MyPrintString("Fort Save = " + IntToString(nSave) + " For DC of " + IntToString(Sp_GetJediDCSave()));
    }
    else if(SWFP_PRIVATE_SAVE_TYPE == SAVING_THROW_REFLEX)
    {
        nSave = ReflexSave(oTarget, Sp_GetJediDCSave(), SWFP_PRIVATE_SAVE_VERSUS_TYPE);
        SP_MyPrintString("Reflex Save = " + IntToString(nSave)+" For DC of " + IntToString(Sp_GetJediDCSave()));
    }
    else if(SWFP_PRIVATE_SAVE_TYPE == SAVING_THROW_WILL)
    {
        nSave = WillSave(oTarget, Sp_GetJediDCSave(), SWFP_PRIVATE_SAVE_VERSUS_TYPE);
        SP_MyPrintString("Will Save = " + IntToString(nSave)+" For DC of " + IntToString(Sp_GetJediDCSave()));
    }
    if(nSave > 0)
    {
        ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectForceResisted(OBJECT_SELF), oTarget);
        DisplayFeedBackText(oTarget, 2);
    }
    return nSave;
}

void Sp_RemoveSpellEffects(int nSpell_ID, object oCaster, object oTarget)
{
    //Declare major variables
    int bValid = FALSE;
    effect eAOE;
    if(GetHasSpellEffect(nSpell_ID, oTarget))
    {
        //Search through the valid effects on the target.
        eAOE = GetFirstEffect(oTarget);
        while (GetIsEffectValid(eAOE) && bValid == FALSE)
        {
            //
            if (GetEffectCreator(eAOE) == oCaster)
            {
                //If the effect was created by the spell then remove it
                if(GetEffectSpellId(eAOE) == nSpell_ID)
                {
                    RemoveEffect(oTarget, eAOE);
                    bValid = TRUE;
                }
            }
            //Get next effect on the target
            eAOE = GetNextEffect(oTarget);
        }
    }
}

void Sp_RemoveSpellEffectsGeneral(int nSpell_ID, object oTarget)
{
    //Declare major variables
    int bValid = FALSE;
    effect eAOE;
    if(GetHasSpellEffect(nSpell_ID, oTarget))
    {
        //Search through the valid effects on the target.
        eAOE = GetFirstEffect(oTarget);
        while (GetIsEffectValid(eAOE) && bValid == FALSE)
        {
            //If the effect was created by the spell then remove it
            if(GetEffectSpellId(eAOE) == nSpell_ID)
            {
                RemoveEffect(oTarget, eAOE);
                bValid = TRUE;
            }
            //Get next effect on the target
            eAOE = GetNextEffect(oTarget);
        }
    }
}

void Sp_RemoveSpecificEffect(int nEffectTypeID, object oTarget)
{
    //Declare major variables
    //Get the object that is exiting the AOE
    int bValid = FALSE;
    effect eAOE;
    //Search through the valid effects on the target.
    eAOE = GetFirstEffect(oTarget);
    while (GetIsEffectValid(eAOE))
    {
        if (GetEffectType(eAOE) == nEffectTypeID)
        {
            //If the effect was created by the spell then remove it
            bValid = TRUE;
            RemoveEffect(oTarget, eAOE);
        }
        //Get next effect on the target
        eAOE = GetNextEffect(oTarget);
    }
}

float Sp_GetSpellEffectDelay(location SpellTargetLocation, object oTarget)
{
    float fDelay;
    return fDelay = GetDistanceBetweenLocations(SpellTargetLocation, GetLocation(oTarget))/20;
}

float Sp_GetRandomDelay(float fMinimumTime = 0.4, float MaximumTime = 1.1)
{
    float fRandom = MaximumTime - fMinimumTime;
    int nRandom;
    if(fRandom < 0.0)
    {
        return 0.0;
    }
    else
    {
        nRandom = FloatToInt(fRandom  * 10.0);
        nRandom = Random(nRandom) + 1;
        fRandom = IntToFloat(nRandom);
        fRandom /= 10.0;
        return fRandom + fMinimumTime;
    }
}

int Sp_GetJediDCSave()
{
    int nDC = GetSpellSaveDC();
    return nDC;
}

void Sp_ApplyForcePowerEffects(float fTime, effect eEffect, object oTarget)
{
    float fDelay;
    int nRoll = d6();
    fDelay = IntToFloat(nRoll)/10.0;
    if(fTime == 1000.0)
    {
        ApplyEffectToObject(DURATION_TYPE_PERMANENT, eEffect, oTarget);
    }
    else if(fTime == 0.0)
    {
        DelayCommand(fDelay, ApplyEffectToObject(DURATION_TYPE_INSTANT, eEffect, oTarget));
    }
    else
    {
        ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eEffect, oTarget, fTime);
    }
}

int SP_CheckEnergyResistance(object oTarget)
{
    if(GetHasSpellEffect(FORCE_POWER_RESIST_COLD_HEAT_ENERGY, oTarget) || GetHasSpellEffect(FORCE_POWER_RESIST_POISON_DISEASE_SONIC, oTarget))
    {
        return TRUE;
    }
    return FALSE;
}
//::///////////////////////////////////////////////
//:: Runs the specified force power.
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Runs the script for the particular force power.

    SWFP_HARMFUL = ;
    SWFP_PRIVATE_SAVE_TYPE;
    SWFP_PRIVATE_SAVE_VERSUS_TYPE;
    SWFP_DAMAGE;
    SWFP_DAMAGE_TYPE;
    SWFP_DAMAGE_VFX;

*/
//:://////////////////////////////////////////////
//:: Created By: Preston Watamaniuk
//:: Created On: July 30, 2002
//:://////////////////////////////////////////////

void  Sp_RunForcePowers()
{
    object oTarget = GetSpellTargetObject();
    effect eLink1, eLink2;
    effect eInvalid;
    SWFP_SHAPE = SHAPE_SPHERE;

    //P.W. (June 8) This makes the Taris Calo Nord immune to Force Push, breaks the cutscene if not.
    if(GetTag(oTarget) == "Calo082" && GetSpellId() == FORCE_POWER_FORCE_PUSH)
    {
        DisplayFeedBackText(oTarget, 1);
        return;
    }

    switch (GetSpellId())
    {
        /*
        AFFLICTION
        */
        case FORCE_POWER_AFFLICTION:
        {
            /*
            SWFP_HARMFUL = TRUE;
            eLink1 = EffectPoison(POISON_ABILITY_SCORE_AVERAGE);
            effect eLink3 = EffectLinkEffects(eLink1, EffectMovementSpeedDecrease(50));

            eLink3 = SetEffectIcon(eLink3, 1);
            SignalEvent(oTarget, EventSpellCastAt(OBJECT_SELF, GetSpellId(), SWFP_HARMFUL));
            ApplyEffectToObject(DURATION_TYPE_PERMANENT, eLink1, oTarget);
            ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eLink3, oTarget, 21.0);
            */
            SWFP_HARMFUL = TRUE;

            eLink1 = EffectPoison(POISON_ABILITY_SCORE_AVERAGE);
            eLink1 = EffectLinkEffects(eLink1, EffectMovementSpeedDecrease(50));
            eLink1 = SetEffectIcon(eLink1, 23);
            if(!GetIsPoisoned(oTarget))
            {
                Sp_ApplyEffects(FALSE, oTarget, 0.0, 1, eLink1, 1000.0, eInvalid, 0.0);
            }

        }
        break;

        /*
        CHOKE
        */
        case FORCE_POWER_CHOKE:
        {
            SWFP_HARMFUL = TRUE;
            SWFP_PRIVATE_SAVE_TYPE = SAVING_THROW_FORT;
            SWFP_DAMAGE = (GetHitDice(OBJECT_SELF)*2)/3;
            SWFP_DAMAGE_TYPE = DAMAGE_TYPE_BLUDGEONING;
            SWFP_DAMAGE_VFX = VFX_IMP_CHOKE;

            eLink1 = EffectAbilityDecrease(ABILITY_CONSTITUTION, 4);
            eLink1 = EffectLinkEffects(eLink1, EffectAbilityDecrease(ABILITY_STRENGTH, 4));
            eLink1 = EffectLinkEffects(eLink1, EffectAbilityDecrease(ABILITY_DEXTERITY, 4));
            eLink1 = SetEffectIcon(eLink1, 3);

            effect eChoke = EffectChoke();
            effect eDamage = EffectDamage(SWFP_DAMAGE, SWFP_DAMAGE_TYPE);

            int nResist = Sp_BlockingChecks(oTarget, eChoke, eDamage, eInvalid);
            int nSaves;
            SignalEvent(oTarget, EventSpellCastAt(OBJECT_SELF, GetSpellId(), SWFP_HARMFUL));
            if(nResist == 0)
            {
                nSaves = Sp_MySavingThrows(oTarget);
                if(nSaves == 0)
                {
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_CHOKE), oTarget);
                    ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eChoke, oTarget, 6.0);
                    ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eLink1, oTarget, 24.0);
                    int nIdx = 1;
                    float fDelay;
                    SP_InterativeDamage(eDamage, 7, oTarget);
                }
            }
            if(nResist > 0 || nSaves > 0)
            {
                ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectForceFizzle(), OBJECT_SELF);
            }
        }
        break;

        /*
        CURE
        */
        //MODIFIED by Preston Watamaniuk March 28
        // Remove cure poison and reduced the amount by 5
        case FORCE_POWER_CURE:
        {
            SWFP_HARMFUL = FALSE;

            int nHeal = GetAbilityModifier(ABILITY_WISDOM) + GetAbilityModifier(ABILITY_CHARISMA) + 5 + GetHitDice(OBJECT_SELF);

            effect eVis =  EffectVisualEffect(VFX_IMP_CURE);
            int nCnt = 0;

            object oParty;
            if(IsObjectPartyMember(OBJECT_SELF))
            {
                oParty = GetPartyMemberByIndex(nCnt);
            }
            else
            {
                oParty = OBJECT_SELF;
            }

            while(nCnt < 3)
            {
                if(GetIsObjectValid(oParty) &&
                   GetRacialType(oParty) != RACIAL_TYPE_DROID &&
                   GetDistanceBetween(OBJECT_SELF, oParty) < 15.0)
                {
                    SignalEvent(oParty, EventSpellCastAt(OBJECT_SELF, GetSpellId(), FALSE));
                    //Sp_RemoveSpecificEffect(EFFECT_TYPE_POISON, oParty);
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, eVis, oParty);
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectHeal(nHeal), oParty);
                }
                nCnt++;
                if(IsObjectPartyMember(OBJECT_SELF))
                {
                   oParty = GetPartyMemberByIndex(nCnt);
                }
                else
                {
                   oParty = GetNearestCreature(CREATURE_TYPE_REPUTATION, REPUTATION_TYPE_FRIEND, OBJECT_SELF, nCnt);
                }
            }
        }
        break;

        /*
        DEATH FIELD
        */
        case FORCE_POWER_DEATH_FIELD:
        {
            SWFP_HARMFUL = TRUE;
            SWFP_PRIVATE_SAVE_TYPE = SAVING_THROW_FORT;
            SWFP_PRIVATE_SAVE_VERSUS_TYPE = SAVING_THROW_TYPE_DARK_SIDE;
            int nDamTest = GetHitDice(OBJECT_SELF);
            if(nDamTest > 10)
            {
                nDamTest = 10;
            }
            SWFP_DAMAGE = d4(nDamTest);
            SWFP_DAMAGE_TYPE = DAMAGE_TYPE_DARK_SIDE;
            SWFP_DAMAGE_VFX = VFX_PRO_DEATH_FIELD;

            int nHealCount;
            int nDamage = SWFP_DAMAGE/2;
            effect eDamage;
            effect eBeam = EffectBeam(VFX_BEAM_DEATH_FIELD_TENTACLE, OBJECT_SELF, BODY_NODE_HEAD);
            effect eVFX = EffectVisualEffect(VFX_PRO_DEATH_FIELD);

            object oTarget = GetFirstObjectInShape(SHAPE_SPHERE, 12.0, GetLocation(OBJECT_SELF), FALSE, OBJECT_TYPE_CREATURE | OBJECT_TYPE_PLACEABLE);
            while(GetIsObjectValid(oTarget))
            {
                int nResist = Sp_BlockingChecks(oTarget, eLink1, eLink2, eDamage);
                if((GetRacialType(oTarget) == RACIAL_TYPE_HUMAN &&
                   GetRacialType(oTarget) != RACIAL_TYPE_DROID) || GetObjectType(oTarget) == OBJECT_TYPE_PLACEABLE)
                {
                    if(GetIsEnemy(oTarget))
                    {
                        SignalEvent(oTarget, EventSpellCastAt(OBJECT_SELF, GetSpellId(), SWFP_HARMFUL));
                        if(nResist == 0)
                        {
                            int nSaves = Sp_MySavingThrows(oTarget);
                            if(nSaves == FALSE)
                            {
                                eDamage =  EffectDamage(SWFP_DAMAGE, SWFP_DAMAGE_TYPE);
                                nHealCount += SWFP_DAMAGE;
                            }
                            else
                            {
                                eDamage =  EffectDamage(nDamage, SWFP_DAMAGE_TYPE);
                                nHealCount += nDamage;
                            }
                            ApplyEffectToObject(DURATION_TYPE_INSTANT, eVFX, oTarget);
                            ApplyEffectToObject(DURATION_TYPE_INSTANT, eDamage, oTarget);
                            ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eBeam, oTarget, fLightningDuration);
                        }
                        else
                        {
                            //effect eBeam2 = EffectBeam(VFX_BEAM_DEATH_FIELD_TENTACLE, OBJECT_SELF, BODY_NODE_HEAD, TRUE);
                            //ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eBeam, oTarget, fLightningDuration);
                        }
                    }
                }
                oTarget = GetNextObjectInShape(SHAPE_SPHERE, 12.0, GetLocation(OBJECT_SELF), FALSE, OBJECT_TYPE_CREATURE | OBJECT_TYPE_PLACEABLE);
            }
            if(GetCurrentHitPoints(OBJECT_SELF) < GetMaxHitPoints(OBJECT_SELF) && nHealCount > 0)
            {
                ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectHeal(nHealCount), OBJECT_SELF);
            }
        }
        break;

        /*
        DRAIN LIFE
        */
        case FORCE_POWER_DRAIN_LIFE:
        {
            SWFP_HARMFUL = TRUE;
            SWFP_PRIVATE_SAVE_TYPE = SAVING_THROW_FORT;
            int nDam = GetHitDice(OBJECT_SELF);
            int nDamTest = GetHitDice(OBJECT_SELF);
            if(nDamTest > 10)
            {
                nDamTest = 10;
            }
            SWFP_DAMAGE = d4(nDamTest);
            SWFP_DAMAGE_TYPE= DAMAGE_TYPE_DARK_SIDE;
            SWFP_DAMAGE_VFX = VFX_PRO_DRAIN;
            //Set up the drain effect link for the target
            effect eBeam = EffectBeam(VFX_BEAM_DRAIN_LIFE, OBJECT_SELF, BODY_NODE_HAND);
            effect eVFX = EffectVisualEffect(SWFP_DAMAGE_VFX);
            //Set up the link to Heal the user by the same amount.
            effect eHeal;
            effect eDamage = EffectDamage(SWFP_DAMAGE, DAMAGE_TYPE_DARK_SIDE);

            ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eBeam, oTarget, fLightningDuration);
            DelayCommand(0.3, ApplyEffectToObject(DURATION_TYPE_INSTANT, eVFX, oTarget));

            int nResist = Sp_BlockingChecks(oTarget, eDamage, eInvalid, eInvalid);

            SignalEvent(oTarget, EventSpellCastAt(OBJECT_SELF, GetSpellId(), SWFP_HARMFUL));
            if(GetRacialType(oTarget) != RACIAL_TYPE_DROID)
            {
                if(nResist == 0)
                {
                    int nSaves = Sp_MySavingThrows(oTarget);
                    if(nSaves > 0)
                    {
                        SWFP_DAMAGE /= 2;
                    }
                    eDamage = EffectDamage(SWFP_DAMAGE,  DAMAGE_TYPE_DARK_SIDE);
                    if(GetCurrentHitPoints(OBJECT_SELF) < GetMaxHitPoints(OBJECT_SELF) && SWFP_DAMAGE > 0)
                    {
                        eHeal = EffectHeal(SWFP_DAMAGE);
                        ApplyEffectToObject(DURATION_TYPE_INSTANT, eHeal, OBJECT_SELF);
                    }
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, eDamage, oTarget);
                }
                else
                {
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectForceFizzle(), OBJECT_SELF);
                }
            }
        }
        break;

        /*
        DESTROY DROID
        */
        case FORCE_POWER_DROID_DESTROY:
        {
            SWFP_HARMFUL = TRUE;
            SWFP_PRIVATE_SAVE_TYPE = SAVING_THROW_REFLEX;
            SWFP_PRIVATE_SAVE_VERSUS_TYPE = SAVING_THROW_TYPE_ELECTRICAL;

            eLink1 = EffectBeam(VFX_BEAM_DROID_DESTROY, oTarget, BODY_NODE_CHEST);
            eLink1 = EffectLinkEffects(eLink1, EffectVisualEffect(VFX_PRO_LIGHTNING_L));

            eLink2 = EffectDroidStun();
            eLink2 = EffectLinkEffects(eLink2, EffectVisualEffect(1008));
            eLink2 = SetEffectIcon(eLink2, 5);

            effect eLink3 = EffectBeam(VFX_BEAM_DROID_DESTROY, OBJECT_SELF, BODY_NODE_HAND);
            eLink3 = EffectLinkEffects(eLink3, EffectVisualEffect(VFX_PRO_LIGHTNING_L));

            int nDamage = d6(GetHitDice(OBJECT_SELF));
            int nApply = nDamage/2;
            effect eDamage = EffectDamage(nDamage, DAMAGE_TYPE_ELECTRICAL);;
            effect eSaveDamage = EffectDamage(nApply, DAMAGE_TYPE_ELECTRICAL);


            //Apply Effects to the first droid targeted.
            int nResist = Sp_BlockingChecks(oTarget, eLink1, eLink2, eInvalid);
            int nSaves;
            SignalEvent(oTarget, EventSpellCastAt(OBJECT_SELF, GetSpellId(), SWFP_HARMFUL));
            ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eLink3, oTarget, fLightningDuration);
            if(nResist == 0)
            {
                nSaves = Sp_MySavingThrows(oTarget);
                if(nSaves == 0)
                {
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, eDamage , oTarget);
                    ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eLink2, oTarget, 12.0);
                }
                else
                {
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, eSaveDamage , oTarget);
                }
            }
            else
            {
                ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectForceFizzle(), OBJECT_SELF);
            }

            //Start going through all hostile droids around the primary target
            object oSecond = GetFirstObjectInShape(SHAPE_SPHERE, 6.0, GetLocation(oTarget), FALSE, OBJECT_TYPE_CREATURE | OBJECT_TYPE_PLACEABLE);
            while(GetIsObjectValid(oSecond))
            {
                if(oSecond != oTarget && GetIsEnemy(oSecond) && GetRacialType(oSecond) == RACIAL_TYPE_DROID)
                {
                    nResist = Sp_BlockingChecks(oSecond, eLink1, eLink2, eInvalid);

                    SignalEvent(oSecond, EventSpellCastAt(OBJECT_SELF, GetSpellId(), SWFP_HARMFUL));

                    if(nResist == 0)
                    {
                        nSaves = Sp_MySavingThrows(oSecond);
                        //Apply the beam effect and hit regardless because damage is still done.
                        ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eLink1, oSecond, fLightningDuration);
                        if(nSaves == 0)
                        {
                            ApplyEffectToObject(DURATION_TYPE_INSTANT, eDamage , oSecond);
                            ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eLink2, oSecond, 12.0);
                        }
                        else
                        {
                            ApplyEffectToObject(DURATION_TYPE_INSTANT, eSaveDamage , oSecond);
                        }
                    }
                }
                oSecond = GetNextObjectInShape(SHAPE_SPHERE, 6.0, GetLocation(oTarget), FALSE, OBJECT_TYPE_CREATURE | OBJECT_TYPE_PLACEABLE);
            }
        }
        break;

        /*
        DISABLE DROID
        */
        case FORCE_POWER_DROID_DISABLE:
        {
            SWFP_HARMFUL = TRUE;
            SWFP_PRIVATE_SAVE_TYPE = SAVING_THROW_REFLEX;
            SWFP_PRIVATE_SAVE_VERSUS_TYPE = SAVING_THROW_TYPE_ELECTRICAL;

            eLink1 = EffectBeam(VFX_BEAM_DROID_DESTROY, oTarget, BODY_NODE_CHEST);
            eLink1 = EffectLinkEffects(eLink1, EffectVisualEffect(VFX_PRO_LIGHTNING_L));

            eLink2 = EffectDroidStun();
            eLink2 = EffectLinkEffects(eLink2, EffectVisualEffect(1008));
            eLink2 = SetEffectIcon(eLink2, 4);

            effect eLink3 = EffectBeam(VFX_BEAM_DROID_DISABLE, OBJECT_SELF, BODY_NODE_HAND);
            eLink3 = EffectLinkEffects(eLink3, EffectVisualEffect(VFX_PRO_LIGHTNING_L));

            int nDamage = GetHitDice(OBJECT_SELF);
            int nApply = nDamage/2;
            effect eDamage = EffectDamage(nDamage, DAMAGE_TYPE_ELECTRICAL);;
            effect eSaveDamage = EffectDamage(nApply, DAMAGE_TYPE_ELECTRICAL);


            //Apply Effects to the first droid targeted.
            int nResist = Sp_BlockingChecks(oTarget, eLink1, eLink2, eInvalid);
            int nSaves;
            SignalEvent(oTarget, EventSpellCastAt(OBJECT_SELF, GetSpellId(), SWFP_HARMFUL));
            ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eLink3, oTarget, fLightningDuration);
            if(nResist == 0)
            {
                nSaves = Sp_MySavingThrows(oTarget);
                if(nSaves == 0)
                {
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, eDamage , oTarget);
                    ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eLink2, oTarget, 12.0);
                }
                else
                {
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, eSaveDamage , oTarget);
                }
            }
            else
            {
                ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectForceFizzle(), OBJECT_SELF);
            }

            //Start going through all hostile droids around the primary target
            object oSecond = GetFirstObjectInShape(SHAPE_SPHERE, 5.0, GetLocation(oTarget), FALSE, OBJECT_TYPE_CREATURE | OBJECT_TYPE_PLACEABLE);
            while(GetIsObjectValid(oSecond))
            {
                if(oSecond != oTarget && GetIsEnemy(oSecond) && GetRacialType(oSecond) == RACIAL_TYPE_DROID)
                {
                    nResist = Sp_BlockingChecks(oSecond, eLink1, eLink2, eInvalid);

                    SignalEvent(oSecond, EventSpellCastAt(OBJECT_SELF, GetSpellId(), SWFP_HARMFUL));

                    if(nResist == 0)
                    {
                        nSaves = Sp_MySavingThrows(oSecond);
                        //Apply the beam effect and hit regardless because damage is still done.
                        ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eLink1, oSecond, fLightningDuration);
                        if(nSaves == 0)
                        {
                            ApplyEffectToObject(DURATION_TYPE_INSTANT, eDamage , oSecond);
                            ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eLink2, oSecond, 12.0);
                        }
                        else
                        {
                            ApplyEffectToObject(DURATION_TYPE_INSTANT, eSaveDamage , oSecond);
                        }
                    }
                }
                oSecond = GetNextObjectInShape(SHAPE_SPHERE, 5.0, GetLocation(oTarget), FALSE, OBJECT_TYPE_CREATURE | OBJECT_TYPE_PLACEABLE);
            }
        }
        break;

        /*
        STUN DROID
        */
        case FORCE_POWER_DROID_STUN:
        {
            SWFP_HARMFUL = TRUE;
            SWFP_PRIVATE_SAVE_TYPE = SAVING_THROW_FORT;
            SWFP_PRIVATE_SAVE_VERSUS_TYPE = SAVING_THROW_TYPE_ELECTRICAL;
            SWFP_DAMAGE = GetHitDice(OBJECT_SELF);
            SWFP_DAMAGE_TYPE= DAMAGE_TYPE_ELECTRICAL;

            eLink1 = EffectBeam(2065, OBJECT_SELF, BODY_NODE_HAND); //P.W.(May 19, 2003) New Droid Stun Beam Effect added
            eLink1 = EffectLinkEffects(eLink1, EffectVisualEffect(VFX_PRO_LIGHTNING_S));
            eLink2 = EffectDroidStun();
            eLink2 = SetEffectIcon(eLink2, 30);
            eLink2 = EffectLinkEffects(eLink2, EffectVisualEffect(1007));  //P.W.(May 19, 2003) Linked the smoke to Link 2
            effect eDamage;

            int nResist = Sp_BlockingChecks(oTarget, eLink1, eLink2, eInvalid);
            SignalEvent(oTarget, EventSpellCastAt(OBJECT_SELF, GetSpellId(), SWFP_HARMFUL));

            ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eLink1, oTarget, fLightningDuration);

            if(nResist == 0)
            {
                int nSaves = Sp_MySavingThrows(oTarget);
                if(nSaves == 0)
                {
                    eDamage = EffectDamage(SWFP_DAMAGE, DAMAGE_TYPE_ELECTRICAL);
                    ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eLink2, oTarget, 12.0);
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, eDamage, oTarget);
                }
                else
                {
                    eDamage = EffectDamage(SWFP_DAMAGE/2, DAMAGE_TYPE_ELECTRICAL);
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, eDamage, oTarget);
                }
            }
            else
            {
                ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectForceFizzle(), OBJECT_SELF);
            }
        }
        break;

        /*
        FEAR
        */
        case FORCE_POWER_FEAR:
        {
            SWFP_HARMFUL = TRUE;
            SWFP_PRIVATE_SAVE_TYPE = SAVING_THROW_WILL;
            SWFP_PRIVATE_SAVE_VERSUS_TYPE = SAVING_THROW_TYPE_FEAR;

            eLink1 = EffectHorrified();
            eLink1 = EffectLinkEffects(eLink1, EffectVisualEffect(1041));
            eLink1 = SetEffectIcon(eLink1, 6);

            Sp_ApplyEffects(TRUE, oTarget, 0.0, 1, eLink1, 6.0, eInvalid, 0.0);
        }
        break;

        /*
        FORCE ARMOR
        */
        case FORCE_POWER_FORCE_ARMOR:
        {
            SWFP_HARMFUL = FALSE;
            eLink1 = EffectACIncrease(6, AC_DODGE_BONUS);
            eLink1 = EffectLinkEffects(eLink1, EffectSavingThrowIncrease(SAVING_THROW_ALL, 6));
            eLink1 = SetEffectIcon(eLink1, 7);
            eLink2 = EffectVisualEffect(VFX_PRO_FORCE_ARMOR);
            eLink2 = EffectLinkEffects(eLink2, EffectVisualEffect(VFX_PRO_FORCE_SHIELD));


            //MODIFIED by Preston Watamaniuk on March 12
            //Make sure these Force Powers do not stack
            /*
            if(!GetHasSpellEffect(FORCE_POWER_FORCE_AURA) &&
               !GetHasSpellEffect(FORCE_POWER_FORCE_ARMOR) &&
               !GetHasSpellEffect(FORCE_POWER_FORCE_SHIELD))
            {
                Sp_ApplyEffects(FALSE, oTarget, 0.0, 1, eLink1, 20.0, eLink2, 3.0);
            }
            */

            //Modified by Preston Watamaniuk on Sept 2
            //Make sure the old power is replaced by a new version if the same or more powerful
            if(GetHasSpellEffect(FORCE_POWER_FORCE_AURA))
            {
                Sp_RemoveSpellEffectsGeneral(FORCE_POWER_FORCE_AURA, oTarget);
            }
            else if(GetHasSpellEffect(FORCE_POWER_FORCE_SHIELD))
            {
                Sp_RemoveSpellEffectsGeneral(FORCE_POWER_FORCE_SHIELD, oTarget);
            }
            else if(GetHasSpellEffect(FORCE_POWER_FORCE_ARMOR))
            {
                Sp_RemoveSpellEffectsGeneral(FORCE_POWER_FORCE_ARMOR, oTarget);
            }
            Sp_ApplyEffects(FALSE, oTarget, 0.0, 1, eLink1, 20.0, eLink2, 3.0);
        }
        break;

        /*
        FORCE AURA
        */
        case FORCE_POWER_FORCE_AURA:
        {
            SWFP_HARMFUL = FALSE;
            eLink1 = EffectACIncrease(2, AC_DODGE_BONUS);
            eLink1 = EffectLinkEffects(eLink1, EffectSavingThrowIncrease(SAVING_THROW_ALL, 2));
            eLink1 = SetEffectIcon(eLink1, 8);
            eLink2 = EffectVisualEffect(VFX_PRO_FORCE_AURA);

            //Modified by Preston Watamaniuk on Sept 2
            //Make sure the old power is replaced by a new version if the same or more powerful
            if(GetHasSpellEffect(FORCE_POWER_FORCE_AURA))
            {
                Sp_RemoveSpellEffectsGeneral(FORCE_POWER_FORCE_AURA, oTarget);
            }

            //MODIFIED by Preston Watamaniuk on March 12
            //Make sure these Force Powers do not stack
            if(!GetHasSpellEffect(FORCE_POWER_FORCE_ARMOR) &&
               !GetHasSpellEffect(FORCE_POWER_FORCE_SHIELD))
            {
                Sp_ApplyEffects(FALSE, oTarget, 0.0, 1, eLink1, 20.0, eLink2, 3.0);
            }

        }
        break;

        /*
        FORCE BREACH
        */
        case FORCE_POWER_FORCE_BREACH:
        {
            effect eBuff = GetFirstEffect(oTarget);
            int bValid = FALSE;
            while(GetIsEffectValid(eBuff))
            {
                if(GetEffectSpellId(eBuff) == FORCE_POWER_FORCE_AURA ||
                   GetEffectSpellId(eBuff) == FORCE_POWER_FORCE_SHIELD ||
                   GetEffectSpellId(eBuff) == FORCE_POWER_FORCE_ARMOR ||
                   GetEffectSpellId(eBuff) == FORCE_POWER_FORCE_MIND ||
                   GetEffectSpellId(eBuff) == FORCE_POWER_KNIGHT_MIND ||
                   GetEffectSpellId(eBuff) == FORCE_POWER_MIND_MASTERY ||
                   GetEffectSpellId(eBuff) == FORCE_POWER_SPEED_BURST ||
                   GetEffectSpellId(eBuff) == FORCE_POWER_KNIGHT_SPEED ||
                   GetEffectSpellId(eBuff) == FORCE_POWER_SPEED_MASTERY ||
                   GetEffectSpellId(eBuff) == FORCE_POWER_RESIST_COLD_HEAT_ENERGY ||
                   GetEffectSpellId(eBuff) == FORCE_POWER_RESIST_POISON_DISEASE_SONIC ||
                   GetEffectSpellId(eBuff) == FORCE_POWER_RESIST_FORCE ||
                   GetEffectSpellId(eBuff) == FORCE_POWER_FORCE_IMMUNITY)
                 {
                    RemoveEffect(oTarget, eBuff);
                 }
                 eBuff = GetNextEffect(oTarget);
            }
            SignalEvent(oTarget, EventSpellCastAt(OBJECT_SELF, GetSpellId()));
            ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_FORCE_BREACH), oTarget);
        }
        break;

        /*
        FORCE IMMUNITY
        */
        case FORCE_POWER_FORCE_IMMUNITY:
        {
            SWFP_HARMFUL = FALSE;
            int nSR = 15 + GetHitDice(OBJECT_SELF);
            eLink1 = EffectForceResistanceIncrease(nSR);
            eLink1 = SetEffectIcon(eLink1, 9);
            eLink2 = EffectVisualEffect(VFX_PRO_RESIST_FORCE);
            if(GetHasSpellEffect(FORCE_POWER_RESIST_FORCE))
            {
                Sp_RemoveSpellEffectsGeneral(FORCE_POWER_RESIST_FORCE, oTarget);
            }
            else if(GetHasSpellEffect(FORCE_POWER_FORCE_IMMUNITY))
            {
                Sp_RemoveSpellEffectsGeneral(FORCE_POWER_FORCE_IMMUNITY, oTarget);
            }
            Sp_ApplyEffects(TRUE, oTarget, 0.0, 1, eLink1, 60.0, eLink2, 1.0);
        }
        break;

        /*
        FORCE PUSH
        */
        case FORCE_POWER_FORCE_PUSH:
        {
            SWFP_HARMFUL = TRUE;
            SWFP_PRIVATE_SAVE_TYPE = SAVING_THROW_REFLEX;
            SWFP_DAMAGE = GetHitDice(OBJECT_SELF);
            SWFP_DAMAGE_TYPE = DAMAGE_TYPE_BLUDGEONING;

            eLink1 = EffectForcePushed();
            eLink2 = EffectStunned();
            eLink2 = SetEffectIcon(eLink2, 11);
            eLink1 = EffectLinkEffects(eLink1, EffectVisualEffect(VFX_IMP_FORCE_PUSH));
            effect eDamage = EffectDamage(GetHitDice(OBJECT_SELF), SWFP_DAMAGE_TYPE);

            int nResist = Sp_BlockingChecks(oTarget, eLink1, eLink2, eDamage);
            if(SP_CheckForcePushViability(oTarget, FALSE))
            {
                if(nResist == FALSE)
                {
                    int nSaves = Sp_MySavingThrows(oTarget);
                    if(nSaves == FALSE)
                    {
                        eDamage = EffectDamage(GetHitDice(OBJECT_SELF), SWFP_DAMAGE_TYPE);
                        DelayCommand(0.4, SP_MyApplyEffectToObject(DURATION_TYPE_INSTANT, eDamage, oTarget));
                        ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eLink1, oTarget, 0.1);
                        DelayCommand(2.55, SP_MyApplyEffectToObject(DURATION_TYPE_TEMPORARY, eLink2, oTarget, 2.0));
                    }
                    else
                    {
                        eDamage = EffectDamage(GetHitDice(OBJECT_SELF)/2, SWFP_DAMAGE_TYPE);
                        ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eLink1, oTarget, 0.1);
                        ApplyEffectToObject(DURATION_TYPE_INSTANT, eDamage, oTarget);
                        ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_FORCE_PUSH), oTarget);

                    }
                }
                else
                {
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectForceFizzle(), OBJECT_SELF);
                }
            }
        }
        break;

        /*
        FORCE VALOR
        */
        case FORCE_POWER_FORCE_MIND:
        {
            SWFP_HARMFUL = FALSE;
            SWFP_SHAPE = SHAPE_SPHERE;
            eLink1 = EffectSavingThrowIncrease(SAVING_THROW_FORT,2);
            eLink1 = EffectLinkEffects(eLink1, EffectSavingThrowIncrease(SAVING_THROW_REFLEX, 2));
            eLink1 = EffectLinkEffects(eLink1, EffectSavingThrowIncrease(SAVING_THROW_WILL, 2));
            eLink1 = EffectLinkEffects(eLink1, EffectAbilityIncrease(ABILITY_CHARISMA, 2));
            eLink1 = EffectLinkEffects(eLink1, EffectAbilityIncrease(ABILITY_CONSTITUTION, 2));
            eLink1 = EffectLinkEffects(eLink1, EffectAbilityIncrease(ABILITY_DEXTERITY, 2));
            eLink1 = EffectLinkEffects(eLink1, EffectAbilityIncrease(ABILITY_INTELLIGENCE, 2));
            eLink1 = EffectLinkEffects(eLink1, EffectAbilityIncrease(ABILITY_STRENGTH, 2));
            eLink1 = EffectLinkEffects(eLink1, EffectAbilityIncrease(ABILITY_WISDOM, 2));
            eLink2 = EffectVisualEffect(VFX_IMP_MIND_FORCE);
            eLink1 = SetEffectIcon(eLink1, 10);
            Sp_RemoveBuffSpell();
            Sp_ApplyEffects(FALSE, OBJECT_SELF, 30.0, 1000, eLink1, 20.0, eLink2, 0.0);
        }
        break;

        /*
        FORCE SHIELD
        */
        case FORCE_POWER_FORCE_SHIELD:
        {
            SWFP_HARMFUL = FALSE;
            eLink1 = EffectACIncrease(4, AC_DODGE_BONUS);
            eLink1 = EffectLinkEffects(eLink1, EffectSavingThrowIncrease(SAVING_THROW_ALL, 4));
            eLink1 = SetEffectIcon(eLink1, 12);
            eLink2 = EffectVisualEffect(VFX_PRO_FORCE_SHIELD);

            //Modified by Preston Watamaniuk on Sept 2
            //Make sure the old power is replaced by a new version if the same or more powerful
            if(GetHasSpellEffect(FORCE_POWER_FORCE_AURA))
            {
                Sp_RemoveSpellEffectsGeneral(FORCE_POWER_FORCE_AURA, oTarget);
            }
            else if(GetHasSpellEffect(FORCE_POWER_FORCE_SHIELD))
            {
                Sp_RemoveSpellEffectsGeneral(FORCE_POWER_FORCE_SHIELD, oTarget);
            }
            //MODIFIED by Preston Watamaniuk on March 12
            //Make sure these Force Powers do not stack
            if(!GetHasSpellEffect(FORCE_POWER_FORCE_ARMOR))
            {
                Sp_ApplyEffects(FALSE, oTarget, 0.0, 1, eLink1, 20.0, eLink2, 3.0);
            }
        }
        break;

        /*
        FORCE STORM
        */
        case FORCE_POWER_FORCE_STORM:
        {
            SWFP_HARMFUL = TRUE;
            SWFP_PRIVATE_SAVE_TYPE = SAVING_THROW_WILL;
            int nDamage = GetHitDice(OBJECT_SELF);
            if(nDamage > 10)
            {
                nDamage = 10;
            }
            SWFP_DAMAGE = d6(nDamage);
            SWFP_DAMAGE_TYPE = DAMAGE_TYPE_ELECTRICAL;
            effect eBeam = EffectBeam(2061, OBJECT_SELF, BODY_NODE_HEAD);
            effect eVis = EffectVisualEffect(VFX_PRO_LIGHTNING_L);
            effect eForce;
            effect eDam;
            object oUse = GetFirstObjectInShape(SHAPE_SPHERE, 12.0, GetLocation(oTarget), FALSE, OBJECT_TYPE_CREATURE | OBJECT_TYPE_PLACEABLE);
            while(GetIsObjectValid(oUse))
            {
                //Make Immunity Checks
                if(GetIsEnemy(oUse))
                {
                    SignalEvent(oTarget, EventSpellCastAt(OBJECT_SELF, GetSpellId(), SWFP_HARMFUL));
                    if(!ResistForce(OBJECT_SELF, oUse))
                    {
                        ApplyEffectToObject(DURATION_TYPE_INSTANT, eVis, oUse);
                        ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eBeam, oUse, fLightningDuration);
                        if(!WillSave(oUse, Sp_GetJediDCSave()))
                        {
                            eDam = EffectDamage(SWFP_DAMAGE, SWFP_DAMAGE_TYPE);
                            eForce = EffectDamageForcePoints(SWFP_DAMAGE);
                            ApplyEffectToObject(DURATION_TYPE_INSTANT, eDam, oUse);
                            ApplyEffectToObject(DURATION_TYPE_INSTANT, eForce, oUse);
                        }
                        else
                        {
                            eDam = EffectDamage(SWFP_DAMAGE/2, SWFP_DAMAGE_TYPE);
                            eForce = EffectDamageForcePoints(SWFP_DAMAGE/2);
                            ApplyEffectToObject(DURATION_TYPE_INSTANT, eDam, oUse);
                            ApplyEffectToObject(DURATION_TYPE_INSTANT, eForce, oUse);
                        }
                    }
                    else
                    {
                        ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectForceFizzle(), OBJECT_SELF);
                    }
                }
                oUse = GetNextObjectInShape(SHAPE_SPHERE, 12.0, GetLocation(oTarget), FALSE, OBJECT_TYPE_CREATURE | OBJECT_TYPE_PLACEABLE);
            }
        }
        break;

        /*
        FORCE WAVE
        */
        case FORCE_POWER_FORCE_WAVE:
        {
            SWFP_HARMFUL = TRUE;
            SWFP_PRIVATE_SAVE_TYPE = SAVING_THROW_REFLEX;
            SWFP_DAMAGE = GetHitDice(OBJECT_SELF) + GetHitDice(OBJECT_SELF)/2;
            SWFP_DAMAGE_TYPE = DAMAGE_TYPE_BLUDGEONING;
            effect eVis = EffectVisualEffect(VFX_IMP_FORCE_PUSH);
            eLink1 = EffectForcePushed();
            eLink2 = EffectStunned();
            eLink2 = SetEffectIcon(eLink2, 13);
            effect eDam;
            effect eForce;
            object oUse = GetFirstObjectInShape(SHAPE_SPHERE, 15.0, GetLocation(OBJECT_SELF), FALSE, OBJECT_TYPE_CREATURE | OBJECT_TYPE_PLACEABLE);
            ApplyEffectAtLocation(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_FNF_FORCE_WAVE), GetLocation(OBJECT_SELF));
            while(GetIsObjectValid(oUse))
            {
                //Make Immunity Checks
                if(GetIsEnemy(oUse))
                {
                    SignalEvent(oTarget, EventSpellCastAt(OBJECT_SELF, GetSpellId(), SWFP_HARMFUL));
                    if(!ResistForce(OBJECT_SELF, oUse))
                    {
                        ApplyEffectToObject(DURATION_TYPE_INSTANT, eVis, oUse);
                        if(!ReflexSave(oUse, Sp_GetJediDCSave()))
                        {
                            eDam = EffectDamage(SWFP_DAMAGE, SWFP_DAMAGE_TYPE);
                            DelayCommand(0.4, SP_MyApplyEffectToObject(DURATION_TYPE_INSTANT, eDam, oUse));

                            if(SP_CheckForcePushViability(oUse, FALSE))
                            {
                                ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eLink1, oUse, 0.2);
                            }
                            DelayCommand(2.55, SP_MyApplyEffectToObject(DURATION_TYPE_TEMPORARY, eLink2, oUse, 6.0));
                        }
                        else
                        {
                            if(SP_CheckForcePushViability(oUse, FALSE))
                            {
                                ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eLink1, oUse, 0.2);
                            }
                            eDam = EffectDamage(SWFP_DAMAGE/2, SWFP_DAMAGE_TYPE);
                            ApplyEffectToObject(DURATION_TYPE_INSTANT, eDam, oUse);
                            ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectForceResisted(OBJECT_SELF), oTarget);
                        }
                    }
                }
                oUse = GetNextObjectInShape(SHAPE_SPHERE, 15.0, GetLocation(OBJECT_SELF), FALSE, OBJECT_TYPE_CREATURE | OBJECT_TYPE_PLACEABLE);
            }
        }
        break;

        /*
        FORCE WHIRLWIND
        */
        case FORCE_POWER_FORCE_WHIRLWIND:
        {
            SWFP_HARMFUL = TRUE;
            SWFP_PRIVATE_SAVE_TYPE = SAVING_THROW_REFLEX;
            SWFP_DAMAGE = GetHitDice(OBJECT_SELF)/3;
            SWFP_DAMAGE_TYPE = DAMAGE_TYPE_BLUDGEONING;
            effect eDamage = EffectDamage(SWFP_DAMAGE, SWFP_DAMAGE_TYPE);

            //SP_MyPostString(IntToString(SP_CheckAppearanceGeoDroidShields(oTarget)),5,5,3.0);

            if(SP_CheckForcePushViability(oTarget, TRUE))
            {
                eLink1 = EffectWhirlWind();
                eLink1 = EffectLinkEffects(eLink1, EffectVisualEffect(VFX_IMP_FORCE_WHIRLWIND));
                eLink1 = EffectLinkEffects(eLink1, EffectVisualEffect(VFX_DUR_FORCE_WHIRLWIND));
                eLink1 = SetEffectIcon(eLink1, 14);

                int nResist = Sp_BlockingChecks(oTarget, eLink1, eDamage, eInvalid);
                int nSaves;
                SignalEvent(oTarget, EventSpellCastAt(OBJECT_SELF, GetSpellId(), SWFP_HARMFUL));
                if(nResist == 0)
                {
                    nSaves = Sp_MySavingThrows(oTarget);
                    if(nSaves == 0)
                    {
                        ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eLink1, oTarget, 9.0);
                        ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eDamage, oTarget);
                        int nIdx = 1;
                        float fDelay;
                        SP_InterativeDamage(eDamage, 13, oTarget);
                    }
                }
                if(nResist > 0 || nSaves > 0)
                {
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectForceFizzle(), OBJECT_SELF);
                }
            }
            //Force Push all enemies away from the target is they meet the conditions.
            SP_MyPrintString("");
            eLink2 = EffectForcePushTargeted(GetLocation(oTarget));
            object oSecond = GetFirstObjectInShape(SHAPE_SPHERE, 5.0, GetLocation(oTarget));
            while(GetIsObjectValid(oSecond))
            {
                if(SP_CheckForcePushViability(oSecond, FALSE) == TRUE && GetIsEnemy(oSecond, OBJECT_SELF) && oSecond != oTarget)
                {
                    //P.W. (June 8) - Put this check in so Calo Nord does not move during the fight on Taris
                    if(GetTag(oTarget) != "Calo082")
                    {
                        SignalEvent(oSecond, EventSpellCastAt(OBJECT_SELF, GetSpellId(), SWFP_HARMFUL));
                        int nResist2 = Sp_BlockingChecks(oSecond, eLink2,eInvalid,eInvalid);
                        if(nResist2 == 0)
                        {
                            int nSaves2 = Sp_MySavingThrows(oSecond);
                            if(nSaves2 == 0)
                            {
                                ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eLink2, oSecond, 0.2);
                            }
                        }
                    }
                }
                oSecond = GetNextObjectInShape(SHAPE_SPHERE, 5.0, GetLocation(oTarget));
                SP_MyPrintString("");
            }
        }
        break;

        /*
        HEAL
        */
        //MODIFIED by Preston Watamaniuk March 28
        //Cut the heal in half
        case FORCE_POWER_HEAL:
        {
            SWFP_HARMFUL = FALSE;

            int nHeal = GetAbilityModifier(ABILITY_WISDOM) + GetAbilityModifier(ABILITY_CHARISMA) + 10 + GetHitDice(OBJECT_SELF);

            effect eVis =  EffectVisualEffect(VFX_IMP_HEAL);
            int nCnt = 0;

            object oParty;
            if(IsObjectPartyMember(OBJECT_SELF))
            {
                oParty = GetPartyMemberByIndex(nCnt);
            }
            else
            {
                oParty = OBJECT_SELF;
            }

            while(nCnt < 3)
            {
                if(GetIsObjectValid(oParty) &&
                   GetRacialType(oParty) != RACIAL_TYPE_DROID &&
                   GetDistanceBetween(OBJECT_SELF, oParty) < 15.0)
                {
                    SignalEvent(oParty, EventSpellCastAt(OBJECT_SELF, GetSpellId(), SWFP_HARMFUL));
                    Sp_RemoveSpecificEffect(EFFECT_TYPE_POISON, oParty);
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, eVis, oParty);
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectHeal(nHeal), oParty);
                }
                nCnt++;
                if(IsObjectPartyMember(OBJECT_SELF))
                {
                   oParty = GetPartyMemberByIndex(nCnt);
                }
                else
                {
                   oParty = GetNearestCreature(CREATURE_TYPE_REPUTATION, REPUTATION_TYPE_FRIEND, OBJECT_SELF, nCnt, CREATURE_TYPE_RACIAL_TYPE, RACIAL_TYPE_HUMAN);
                }
            }
        }
        break;
        /*
        HORROR
        */
        case FORCE_POWER_HORROR:
        {
            SWFP_HARMFUL = TRUE;
            SWFP_PRIVATE_SAVE_TYPE = SAVING_THROW_WILL;
            SWFP_PRIVATE_SAVE_VERSUS_TYPE = SAVING_THROW_TYPE_FEAR;

            eLink1 = EffectHorrified();
            eLink1 = EffectLinkEffects(eLink1, EffectVisualEffect(1042));
            eLink1 = SetEffectIcon(eLink1, 16);
            Sp_ApplyEffects(TRUE, oTarget, 5.0, 1000, eLink1, 12.0, eInvalid, 0.0, RACIAL_TYPE_HUMAN);
        }
        break;

        /*
        INSANITY
        */
        case FORCE_POWER_INSANITY:
        {
            SWFP_HARMFUL = TRUE;
            SWFP_PRIVATE_SAVE_TYPE = SAVING_THROW_WILL;
            SWFP_PRIVATE_SAVE_VERSUS_TYPE = SAVING_THROW_TYPE_FEAR;

            eLink1 = EffectHorrified();
            eLink1 = EffectLinkEffects(eLink1, EffectVisualEffect(1043));
            eLink1 = SetEffectIcon(eLink1, 17);
            Sp_ApplyEffects(TRUE, oTarget, 10.0, 1000, eLink1, 12.0, eInvalid, 0.0, RACIAL_TYPE_HUMAN);

            //ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(1043), oTarget);

        }
        break;

        /*
        KILL
        */
        case FORCE_POWER_KILL:
        {
            SWFP_HARMFUL = TRUE;
            SWFP_DAMAGE_TYPE = DAMAGE_TYPE_BLUDGEONING;
            SWFP_PRIVATE_SAVE_TYPE = SAVING_THROW_FORT;
            effect eDeath = EffectDeath();
            effect eDamage;
            effect eChoke = EffectChoke();
            eChoke = SetEffectIcon(eChoke, 18);
            effect eVFX = EffectVisualEffect(VFX_IMP_CHOKE);

            int nResist = Sp_BlockingChecks(oTarget, eDeath, eDamage, eChoke);
            SignalEvent(oTarget, EventSpellCastAt(OBJECT_SELF, GetSpellId(), SWFP_HARMFUL));
            if(nResist == 0)
            {
                int nSaves = Sp_MySavingThrows(oTarget);
                int nDamage = GetHitDice(OBJECT_SELF);
                ApplyEffectToObject(DURATION_TYPE_INSTANT, eVFX, oTarget);
                eDamage = EffectDamage(nDamage, DAMAGE_TYPE_BLUDGEONING);
                if(nSaves == 0)
                {
                    ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eChoke, oTarget, 6.0);
                    nDamage = (GetMaxHitPoints(oTarget))/2;
                    nDamage = nDamage/3;
                    //This will do damage over time to make the effect look more dramatic
                    eDamage = EffectDamage(nDamage, DAMAGE_TYPE_BLUDGEONING);
                    SP_InterativeDamage(eDamage, 7, oTarget);
                }
                else
                {
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, eDamage, oTarget);
                }

            }
            else
            {
                ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectForceFizzle(), OBJECT_SELF);
            }
        }
        break;

        /*
        KNIGHT VALOR
        */
        case FORCE_POWER_KNIGHT_MIND:
        {
            SWFP_HARMFUL = FALSE;
            SWFP_SHAPE = SHAPE_SPHERE;
            eLink1 = EffectSavingThrowIncrease(SAVING_THROW_ALL,3);
            eLink1 = EffectLinkEffects(eLink1, EffectSavingThrowIncrease(SAVING_THROW_ALL, 3));
            eLink1 = EffectLinkEffects(eLink1, EffectAbilityIncrease(ABILITY_CHARISMA, 3));
            eLink1 = EffectLinkEffects(eLink1, EffectAbilityIncrease(ABILITY_CONSTITUTION, 3));
            eLink1 = EffectLinkEffects(eLink1, EffectAbilityIncrease(ABILITY_DEXTERITY, 3));
            eLink1 = EffectLinkEffects(eLink1, EffectAbilityIncrease(ABILITY_INTELLIGENCE, 3));
            eLink1 = EffectLinkEffects(eLink1, EffectAbilityIncrease(ABILITY_STRENGTH, 3));
            eLink1 = EffectLinkEffects(eLink1, EffectAbilityIncrease(ABILITY_WISDOM, 3));
            eLink1 = EffectLinkEffects(eLink1, EffectImmunity(IMMUNITY_TYPE_POISON));
            eLink1 = SetEffectIcon(eLink1, 19);
            eLink2 = EffectVisualEffect(1033);

            Sp_RemoveBuffSpell();
            //Sp_SphereSaveHalf(OBJECT_SELF, 30.0, 1000, eLink1, 20.0);
            Sp_ApplyEffects(TRUE, OBJECT_SELF, 30.0, 1000, eLink1, 20.0, eLink2, 0.0);
        }
        break;

        /*
        LIGHTSABER THROW
        */
        case FORCE_POWER_LIGHT_SABER_THROW:
        {
            SWFP_HARMFUL = TRUE;

            eLink1 = EffectLightsaberThrow(oTarget);
            ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eLink1, OBJECT_SELF, 3.0);
            SignalEvent(oTarget, EventSpellCastAt(OBJECT_SELF, GetSpellId(), SWFP_HARMFUL));
        }
        break;
        /*
        ADVANCED LIGHTSABER THROW
        */
        case FORCE_POWER_LIGHT_SABER_THROW_ADVANCED:
        {
            SWFP_HARMFUL = TRUE;
            object oTarget2, oTarget3;
            oTarget2 = GetNearestCreature(CREATURE_TYPE_REPUTATION, REPUTATION_TYPE_FRIEND, oTarget, 1);
            if(GetIsObjectValid(oTarget2) && GetDistanceBetween(oTarget, oTarget2) <= 5.0)
            {
                oTarget3 = GetNearestCreature(CREATURE_TYPE_REPUTATION, REPUTATION_TYPE_FRIEND, oTarget, 2);
                if(GetIsObjectValid(oTarget3) && GetDistanceBetween(oTarget, oTarget3) <= 5.0)
                {
                    SP_MyPrintString("Target 1 = " + ObjectToString(oTarget) +
                                " Target 2 = " + ObjectToString(oTarget2) +
                                " Target 3 = " + ObjectToString(oTarget3));
                    eLink1 = EffectLightsaberThrow(oTarget, oTarget2, oTarget3);
                    SignalEvent(oTarget, EventSpellCastAt(OBJECT_SELF, GetSpellId(), SWFP_HARMFUL));
                    SignalEvent(oTarget2, EventSpellCastAt(OBJECT_SELF, GetSpellId(), SWFP_HARMFUL));
                    SignalEvent(oTarget3, EventSpellCastAt(OBJECT_SELF, GetSpellId(), SWFP_HARMFUL));
                }
                else
                {
                    SP_MyPrintString("Target 1 = " + ObjectToString(oTarget) +
                                " Target 2 = " + ObjectToString(oTarget2));
                    eLink1 = EffectLightsaberThrow(oTarget, oTarget2);
                    SignalEvent(oTarget, EventSpellCastAt(OBJECT_SELF, GetSpellId(), SWFP_HARMFUL));
                    SignalEvent(oTarget2, EventSpellCastAt(OBJECT_SELF, GetSpellId(), SWFP_HARMFUL));
                }
            }
            else
            {
                SP_MyPrintString("Target 1 = " + ObjectToString(oTarget));
                eLink1 = EffectLightsaberThrow(oTarget);
                oTarget2 = OBJECT_INVALID;
            }
            SP_MyPrintString("Apply Throwsaber Effect");
            ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eLink1, OBJECT_SELF, 3.0);
            SignalEvent(oTarget, EventSpellCastAt(OBJECT_SELF, GetSpellId(), SWFP_HARMFUL));
        }
        break;

        /*
        LIGHTNING
        */
        case FORCE_POWER_LIGHTNING:
        {
            SWFP_HARMFUL = TRUE;
            SWFP_PRIVATE_SAVE_TYPE = SAVING_THROW_WILL;
            SWFP_PRIVATE_SAVE_VERSUS_TYPE = SAVING_THROW_TYPE_ELECTRICAL;
            int nDamage = GetHitDice(OBJECT_SELF);
            if(nDamage > 10)
            {
                nDamage = 10;
            }
            SWFP_DAMAGE = d6(nDamage);
            SWFP_DAMAGE_TYPE = DAMAGE_TYPE_ELECTRICAL;
            SWFP_DAMAGE_VFX = VFX_PRO_LIGHTNING_L; //1036 - With sound
            SWFP_SHAPE = SHAPE_SPELLCYLINDER;

            effect eLightning = EffectBeam(VFX_BEAM_LIGHTNING_DARK_L, OBJECT_SELF, BODY_NODE_HAND);

            effect eDam = EffectDamage(SWFP_DAMAGE, SWFP_DAMAGE_TYPE);
            object oUse = GetFirstObjectInShape(SWFP_SHAPE, 17.0, GetLocation(oTarget), FALSE, OBJECT_TYPE_CREATURE | OBJECT_TYPE_PLACEABLE);
            effect eBump = EffectVisualEffect(SWFP_DAMAGE_VFX);
            int nCnt = 1;
            // This will need to be changed to a double while get nearest in shape script.
            //ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(1036), OBJECT_SELF);
            while(GetIsObjectValid(oUse))
            {
                if(GetIsEnemy(oUse))
                {
                    SignalEvent(oTarget, EventSpellCastAt(OBJECT_SELF, GetSpellId(), SWFP_HARMFUL));
                    //Make Immunity Checks
                    if(!ResistForce(OBJECT_SELF, oUse))
                    {
                        ApplyEffectToObject(DURATION_TYPE_INSTANT, eBump, oUse);
                        if(!WillSave(oUse, Sp_GetJediDCSave(), SWFP_PRIVATE_SAVE_VERSUS_TYPE))
                        {
                            ApplyEffectToObject(DURATION_TYPE_INSTANT, eDam, oUse);
                            //ApplyEffectToObject(DURATION_TYPE_INSTANT, eForce, oUse);
                        }
                        else
                        {
                            SWFP_DAMAGE /= 2;
                            eDam = EffectDamage(SWFP_DAMAGE, SWFP_DAMAGE_TYPE);
                            ApplyEffectToObject(DURATION_TYPE_INSTANT, eDam, oUse);

                        }
                        ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eLightning, oUse, fLightningDuration);
                    }
                    else
                    {
                        ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectForceFizzle(), OBJECT_SELF);
                        ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectForceResisted(OBJECT_SELF), oTarget);
                    }
                }
                nCnt++;
                oUse = GetNextObjectInShape(SWFP_SHAPE, 17.0, GetLocation(oTarget), FALSE, OBJECT_TYPE_CREATURE | OBJECT_TYPE_PLACEABLE);
            }
        }
        break;

        /*
        MASTER VALOR
        */
        case FORCE_POWER_MIND_MASTERY:
        {
            SWFP_HARMFUL = FALSE;
            SWFP_SHAPE = SHAPE_SPHERE;
            eLink1 = EffectSavingThrowIncrease(SAVING_THROW_ALL,5);
            eLink1 = EffectLinkEffects(eLink1, EffectSavingThrowIncrease(SAVING_THROW_ALL, 5));
            eLink1 = EffectLinkEffects(eLink1, EffectAbilityIncrease(ABILITY_CHARISMA, 5));
            eLink1 = EffectLinkEffects(eLink1, EffectAbilityIncrease(ABILITY_CONSTITUTION, 5));
            eLink1 = EffectLinkEffects(eLink1, EffectAbilityIncrease(ABILITY_DEXTERITY, 5));
            eLink1 = EffectLinkEffects(eLink1, EffectAbilityIncrease(ABILITY_INTELLIGENCE, 5));
            eLink1 = EffectLinkEffects(eLink1, EffectAbilityIncrease(ABILITY_STRENGTH, 5));
            eLink1 = EffectLinkEffects(eLink1, EffectAbilityIncrease(ABILITY_WISDOM, 5));
            eLink1 = EffectLinkEffects(eLink1, EffectImmunity(IMMUNITY_TYPE_POISON));
            eLink1 = SetEffectIcon(eLink1, 21);
            eLink2 = EffectVisualEffect(VFX_IMP_MIND_MASTERY);

            Sp_RemoveBuffSpell();
            Sp_ApplyEffects(TRUE, OBJECT_SELF, 30.0, 1000, eLink1, 20.0, eLink2, 0.0);

        }
        break;

        /*
        PLAGUE
        */
        case FORCE_POWER_PLAGUE:
        {
            SWFP_HARMFUL = TRUE;

            eLink1 = EffectPoison(POISON_ABILITY_SCORE_VIRULENT);
            eLink1 = EffectLinkEffects(eLink1, EffectMovementSpeedDecrease(50));
            eLink1 = SetEffectIcon(eLink1, 23);
            if(!GetIsPoisoned(oTarget))
            {
                Sp_ApplyEffects(FALSE, oTarget, 0.0, 1, eLink1, 1000.0, eInvalid, 0.0);
            }
        }
        break;

        /*
        IMPROVED ENERGY RESISTANCE
        */
        case FORCE_POWER_RESIST_COLD_HEAT_ENERGY:
        {
            SWFP_HARMFUL = FALSE;

            eLink1 = EffectDamageResistance(DAMAGE_TYPE_COLD, 15);
            eLink1 = EffectLinkEffects(eLink1, EffectDamageResistance(DAMAGE_TYPE_FIRE, 15));
            eLink1 = EffectLinkEffects(eLink1, EffectDamageResistance(DAMAGE_TYPE_SONIC, 15));
            eLink1 = EffectLinkEffects(eLink1, EffectDamageResistance(DAMAGE_TYPE_BLASTER, 15));
            eLink1 = EffectLinkEffects(eLink1, EffectDamageResistance(DAMAGE_TYPE_ELECTRICAL, 15));
            eLink1 = EffectLinkEffects(eLink1, EffectImmunity(IMMUNITY_TYPE_POISON));
            eLink1 = SetEffectIcon(eLink1, 24);
            eLink2 = EffectVisualEffect(VFX_PRO_RESIST_POISON);
            if(!SP_CheckEnergyResistance(OBJECT_SELF) && !IsObjectPartyMember(OBJECT_SELF))
            {
                ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eLink1, OBJECT_SELF, 120.0);
                ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eLink2, OBJECT_SELF, 1.0);
            }
            else if(IsObjectPartyMember(OBJECT_SELF))
            {
                int nCnt = 0;
                object oParty;
                for(nCnt; nCnt < 3; nCnt++)
                {
                    oParty = GetPartyMemberByIndex(nCnt);
                    if(GetIsObjectValid(oParty))
                    {
                        if(!SP_CheckEnergyResistance(oParty))
                        {
                            ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eLink1, oParty, 120.0);
                            ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eLink2, oParty, 1.0);
                        }
                    }
                }
            }

            //Sp_ApplyEffects(FALSE, oTarget, 10.0, 3, eLink1, 120.0, eLink2, 1.0);
        }
        break;

        /*
        RESIST FORCE 1
        */
        case FORCE_POWER_RESIST_FORCE:
        {
            SWFP_HARMFUL = FALSE;
            int nSR = 10 + GetHitDice(OBJECT_SELF);
            eLink1 = EffectForceResistanceIncrease(nSR);
            eLink1 = SetEffectIcon(eLink1, 25);
            eLink2 = EffectVisualEffect(VFX_PRO_RESIST_FORCE);
            if(GetHasSpellEffect(FORCE_POWER_RESIST_FORCE))
            {
                Sp_RemoveSpellEffectsGeneral(FORCE_POWER_RESIST_FORCE, oTarget);
            }
            if(!GetHasSpellEffect(FORCE_POWER_FORCE_IMMUNITY))
            {
                Sp_ApplyEffects(TRUE, oTarget, 0.0, 1, eLink1, 60.0, eLink2, 1.0);
            }
        }
        break;

        /*
        RESIST ENERGY
        */

        case FORCE_POWER_RESIST_POISON_DISEASE_SONIC:
        {
            if(!SP_CheckEnergyResistance(OBJECT_SELF))
            {
                SWFP_HARMFUL = FALSE;
                eLink1 = EffectDamageResistance(DAMAGE_TYPE_COLD, 15);
                eLink1 = EffectLinkEffects(eLink1, EffectDamageResistance(DAMAGE_TYPE_FIRE, 15));
                eLink1 = EffectLinkEffects(eLink1, EffectDamageResistance(DAMAGE_TYPE_SONIC, 15));
                eLink1 = EffectLinkEffects(eLink1, EffectDamageResistance(DAMAGE_TYPE_ELECTRICAL, 15));
                eLink1 = SetEffectIcon(eLink1, 26);
                eLink2 = EffectVisualEffect(VFX_PRO_RESIST_ELEMENTS);
                Sp_ApplyEffects(FALSE, oTarget, 0.0, 1, eLink1, 120.0, eLink2, 1.0);
            }
        }
        break;

        /*
        SHOCK
        */
        case FORCE_POWER_SHOCK:
        {
            SWFP_HARMFUL = TRUE;
            SWFP_PRIVATE_SAVE_TYPE = SAVING_THROW_WILL;
            SWFP_PRIVATE_SAVE_VERSUS_TYPE = SAVING_THROW_TYPE_ELECTRICAL;
            int nDamage = GetHitDice(OBJECT_SELF);
            if(nDamage > 10)
            {
                nDamage = 10;
            }
            SWFP_DAMAGE = d6(nDamage);
            SP_MyPostString(IntToString(SWFP_DAMAGE),5,5,4.0);
            SWFP_DAMAGE_TYPE = DAMAGE_TYPE_ELECTRICAL;
            SWFP_DAMAGE_VFX = VFX_PRO_LIGHTNING_S;
            effect eDamage = EffectDamage(SWFP_DAMAGE, DAMAGE_TYPE_ELECTRICAL);
            effect eDamage2 = EffectDamage(SWFP_DAMAGE/2, DAMAGE_TYPE_ELECTRICAL);

            int nSaves = Sp_MySavingThrows(oTarget);
            int nResist = Sp_BlockingChecks(oTarget, eDamage, eInvalid, eInvalid);
            eLink1 = EffectBeam(2066, OBJECT_SELF, BODY_NODE_HAND); //P.W.(May 19, 2003) Changed to Shock beam effect.

            if(nResist == 0)
            {
                ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eLink1, oTarget, fLightningDuration);
                ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_PRO_LIGHTNING_S), oTarget);
                if(nSaves == 0)
                {
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, eDamage, oTarget);
                }
                else
                {
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, eDamage2, oTarget);
                }
            }
            //Sp_ApplyEffects(FALSE, oTarget, 0.0, 1, eLink1, fLightningDuration, eInvalid, 0.0);
        }
        break;

        /*
        STASIS
        */
        case FORCE_POWER_HOLD:
        {
            SWFP_HARMFUL = TRUE;
            SWFP_PRIVATE_SAVE_TYPE = SAVING_THROW_FORT;
            eLink1 = EffectParalyze();
            eLink1 = EffectLinkEffects(eLink1, EffectVisualEffect(VFX_DUR_HOLD));
            eLink1 = SetEffectIcon(eLink1, 15);

            eLink2 = EffectMovementSpeedDecrease(50);
            eLink2 = EffectLinkEffects(eLink2, EffectACDecrease(4));
            eLink2 = SetEffectIcon(eLink2, 15);

            SignalEvent(oTarget, EventSpellCastAt(OBJECT_SELF, GetSpellId(), SWFP_HARMFUL));
            //Make Immunity Checks
            int nResist = Sp_BlockingChecks(oTarget, eLink1, eLink2, eInvalid);
            if(nResist == 0)
            {
                int nSaves = Sp_MySavingThrows(oTarget);
                if(nSaves == 0)
                {
                    ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eLink1, oTarget, 12.0);
                }
                else
                {
                    ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eLink2, oTarget, 12.0);
                }
            }
            else
            {
                ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectForceFizzle(), OBJECT_SELF);
            }
        }
        break;

        /*
        STASIS FIELD
        */
        case FORCE_POWER_SLEEP:
        {
            SWFP_HARMFUL = TRUE;
            SWFP_PRIVATE_SAVE_TYPE = SAVING_THROW_FORT;

            eLink1 = EffectParalyze();
            eLink1 = EffectLinkEffects(eLink1, EffectVisualEffect(VFX_DUR_HOLD));
            eLink1 = SetEffectIcon(eLink1, 27);

            eLink2 = EffectMovementSpeedDecrease(50);
            eLink2 = EffectLinkEffects(eLink2, EffectACDecrease(4));
            eLink2 = SetEffectIcon(eLink2, 27);

            oTarget = GetFirstObjectInShape(SHAPE_SPHERE, 10.0, GetLocation(oTarget), FALSE, OBJECT_TYPE_CREATURE | OBJECT_TYPE_PLACEABLE);
            while(GetIsObjectValid(oTarget))
            {
                if(GetIsEnemy(oTarget) && GetRacialType(oTarget) != RACIAL_TYPE_DROID)
                {
                    SignalEvent(oTarget, EventSpellCastAt(OBJECT_SELF, GetSpellId(), SWFP_HARMFUL));
                    //Make Immunity Checks
                    int nResist = Sp_BlockingChecks(oTarget, eLink1, eLink2, eInvalid);
                    if(nResist == 0)
                    {
                        int nSaves = Sp_MySavingThrows(oTarget);
                        if(nSaves == 0)
                        {
                            ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eLink1, oTarget, 12.0);
                        }
                        else
                        {
                            ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eLink2, oTarget, 12.0);
                        }
                    }
                }
                oTarget = GetNextObjectInShape(SHAPE_SPHERE, 10.0, GetLocation(oTarget), FALSE, OBJECT_TYPE_CREATURE | OBJECT_TYPE_PLACEABLE);
            }
        }
        break;

        /*
        SLOW
        */
        case FORCE_POWER_SLOW:
        {
            SWFP_HARMFUL = TRUE;
            SWFP_PRIVATE_SAVE_TYPE = SAVING_THROW_WILL;

            eLink1 = EffectMovementSpeedDecrease(50);
            eLink1 = EffectLinkEffects(eLink1, EffectACDecrease(2));
            eLink1 = EffectLinkEffects(eLink1, EffectAttackDecrease(2));
            //eLink1 = EffectLinkEffects(eLink1, EffectDamageDecrease(2));
            eLink1 = EffectLinkEffects(eLink1, EffectSavingThrowDecrease(SAVING_THROW_REFLEX,2));
            eLink2 = EffectVisualEffect(VFX_PRO_AFFLICT);
            eLink1 = SetEffectIcon(eLink1, 28);

            Sp_ApplyEffects(TRUE, oTarget, 0.0, 1, eLink1, 30.0, eLink2, 1.0);
        }
        break;
        /*
        BURST OF SPEED
        */
        case FORCE_POWER_SPEED_BURST:
        {
            if(!GetHasSpellEffect(FORCE_POWER_KNIGHT_SPEED) &&
               !GetHasSpellEffect(FORCE_POWER_SPEED_MASTERY))
            {
                SWFP_HARMFUL = FALSE;
                eLink1 = EffectMovementSpeedIncrease(99);
                eLink1 = EffectLinkEffects(eLink1, EffectACIncrease(2));
                eLink1 = EffectLinkEffects(eLink1, EffectVisualEffect(VFX_DUR_KNIGHTS_SPEED));
                eLink1 = SetEffectIcon(eLink1, 2);
                if(OBJECT_SELF == GetPartyMemberByIndex(0))
                {
                    eLink1 = EffectLinkEffects(eLink1, EffectVisualEffect(VFX_DUR_SPEED));
                }
                if(GetHasSpellEffect(FORCE_POWER_SPEED_BURST, oTarget))
                {
                    Sp_RemoveSpellEffectsGeneral(FORCE_POWER_SPEED_BURST, oTarget);
                }
                Sp_ApplyEffects(FALSE, OBJECT_SELF, 0.0, 1, eLink1, 36.0, eInvalid, 0.0);
            }
        }
        break;

        /*
        KNIGHT SPEED
        */
        case FORCE_POWER_KNIGHT_SPEED:
        {
            if(!GetHasSpellEffect(FORCE_POWER_SPEED_MASTERY))
            {
                SWFP_HARMFUL = FALSE;
                eLink1 = EffectMovementSpeedIncrease(99);
                eLink1 = EffectLinkEffects(eLink1, EffectACIncrease(4));
                eLink1 = EffectLinkEffects(eLink1, EffectModifyAttacks(1));
                eLink1 = SetEffectIcon(eLink1, 20);

                if(OBJECT_SELF == GetPartyMemberByIndex(0))
                {
                    eLink1 = EffectLinkEffects(eLink1, EffectVisualEffect(VFX_DUR_SPEED));
                    //eLink1 = EffectLinkEffects(eLink1, EffectVisualEffect(VFX_IMP_SPEED_KNIGHT));
                }

                if(GetHasSpellEffect(FORCE_POWER_SPEED_BURST, oTarget))
                {
                    Sp_RemoveSpellEffectsGeneral(FORCE_POWER_SPEED_BURST, oTarget);
                }
                if(GetHasSpellEffect(FORCE_POWER_KNIGHT_SPEED, oTarget))
                {
                    Sp_RemoveSpellEffectsGeneral(FORCE_POWER_KNIGHT_SPEED, oTarget);
                }
                Sp_ApplyEffects(FALSE, OBJECT_SELF, 0.0, 1, eLink1, 36.0, eInvalid, 0.0);
            }
        }
        break;

        /*
        MASTER SPEED
        */
        case FORCE_POWER_SPEED_MASTERY:
        {
            SWFP_HARMFUL = FALSE;
            eLink1 = EffectMovementSpeedIncrease(99);
            eLink1 = EffectLinkEffects(eLink1, EffectACIncrease(4));
            eLink1 = EffectLinkEffects(eLink1, EffectModifyAttacks(2));
            eLink1 = SetEffectIcon(eLink1, 22);

            if(OBJECT_SELF == GetPartyMemberByIndex(0))
            {
                eLink1 = EffectLinkEffects(eLink1, EffectVisualEffect(VFX_DUR_SPEED));
                //eLink1 = EffectLinkEffects(eLink1, EffectVisualEffect(VFX_IMP_SPEED_MASTERY));
            }
            if(GetHasSpellEffect(FORCE_POWER_SPEED_BURST, oTarget))
            {
                Sp_RemoveSpellEffectsGeneral(FORCE_POWER_SPEED_BURST, oTarget);
            }
            if(GetHasSpellEffect(FORCE_POWER_KNIGHT_SPEED, oTarget))
            {
                Sp_RemoveSpellEffectsGeneral(FORCE_POWER_KNIGHT_SPEED, oTarget);
            }
            if(GetHasSpellEffect(FORCE_POWER_SPEED_MASTERY, oTarget))
            {
                Sp_RemoveSpellEffectsGeneral(FORCE_POWER_SPEED_MASTERY, oTarget);
            }
            Sp_ApplyEffects(FALSE, OBJECT_SELF, 0.0, 1, eLink1, 36.0, eInvalid, 0.0);
        }
        break;

        /*
        STUN
        */
        case FORCE_POWER_STUN:
        {
            SWFP_HARMFUL = TRUE;
            SWFP_PRIVATE_SAVE_TYPE = SAVING_THROW_FORT;
            SWFP_PRIVATE_SAVE_VERSUS_TYPE = SAVING_THROW_TYPE_MIND_AFFECTING;

            eLink1 = EffectStunned();
            //eLink1 = EffectLinkEffects(eLink1, EffectVisualEffect(VFX_DUR_HOLD));
            eLink1 = SetEffectIcon(eLink1, 29);

            eLink2 = EffectMovementSpeedDecrease(50);
            eLink2 = EffectLinkEffects(eLink2, EffectACDecrease(4));
            eLink1 = SetEffectIcon(eLink1, 29);

            SignalEvent(oTarget, EventSpellCastAt(OBJECT_SELF, GetSpellId(), SWFP_HARMFUL));
            //Make Immunity Checks
            int nResist = Sp_BlockingChecks(oTarget, eLink1, eLink2, eInvalid);
            int nSaves;
            if(nResist == 0)
            {
                nSaves = Sp_MySavingThrows(oTarget);
                if(nSaves == 0)
                {
                    ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eLink1, oTarget, 9.0);
                }
                else
                {
                    ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eLink2, oTarget, 9.0);
                }
            }
            if(nResist > 0 || nSaves > 0)
            {
                ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectForceFizzle(), OBJECT_SELF);
            }
        }
        break;

        /*
        SUPRESS FORCE
        */
        case FORCE_POWER_SUPRESS_FORCE:
        {
            effect eBuff = GetFirstEffect(oTarget);
            int bValid = FALSE;
            while(GetIsEffectValid(eBuff))
            {
                if(GetEffectSpellId(eBuff) == FORCE_POWER_FORCE_AURA ||
                   GetEffectSpellId(eBuff) == FORCE_POWER_FORCE_SHIELD ||
                   GetEffectSpellId(eBuff) == FORCE_POWER_FORCE_MIND ||
                   GetEffectSpellId(eBuff) == FORCE_POWER_KNIGHT_MIND ||
                   GetEffectSpellId(eBuff) == FORCE_POWER_SPEED_BURST ||
                   GetEffectSpellId(eBuff) == FORCE_POWER_KNIGHT_SPEED ||
                   GetEffectSpellId(eBuff) == FORCE_POWER_RESIST_FORCE ||
                   GetEffectSpellId(eBuff) == FORCE_POWER_RESIST_POISON_DISEASE_SONIC)
                 {
                    RemoveEffect(oTarget, eBuff);
                 }
                 eBuff = GetNextEffect(oTarget);
            }
            SignalEvent(oTarget, EventSpellCastAt(OBJECT_SELF, GetSpellId()));
            ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_FORCE_BREACH), oTarget);
        }
        break;

        /*
        WOUND
        */
        case FORCE_POWER_WOUND:
        {
            SWFP_HARMFUL = TRUE;
            SWFP_PRIVATE_SAVE_TYPE = SAVING_THROW_FORT;
            SWFP_DAMAGE = (GetHitDice(OBJECT_SELF)*2)/3;
            SWFP_DAMAGE_TYPE = DAMAGE_TYPE_BLUDGEONING;

            effect eChoke = EffectChoke();
            eChoke = SetEffectIcon(eChoke, 31);
            effect eDamage = EffectDamage(SWFP_DAMAGE, SWFP_DAMAGE_TYPE);

            int nResist = Sp_BlockingChecks(oTarget, eChoke, eDamage, eInvalid);
            int nSaves;
            SignalEvent(oTarget, EventSpellCastAt(OBJECT_SELF, GetSpellId(), SWFP_HARMFUL));
            if(nResist == 0)
            {
                nSaves = Sp_MySavingThrows(oTarget);
                if(nSaves == 0)
                {
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_CHOKE), oTarget);
                    ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eChoke, oTarget, 6.0);
                    int nIdx = 1;
                    float fDelay;
                    SP_InterativeDamage(eDamage, 7, oTarget);
                }
            }
            if(nResist > 0 || nSaves > 0)
            {
                ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectForceFizzle(), OBJECT_SELF);
            }
        }
        break;

        case SPECIAL_ABILITY_BODY_FUEL:
        {
            effect eBody = EffectBodyFuel();
            ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eBody, OBJECT_SELF, 30.0);
        }
        break;
        case SPECIAL_ABILITY_ENHANCED_SENSES:
        {
            effect eAC = EffectACDecrease(6);
            effect eAware = EffectSkillIncrease(SKILL_AWARENESS, 10);
            effect eSee = EffectTrueSeeing();
            eLink1 = EffectLinkEffects(eAC, eAware);
            eLink1 = EffectLinkEffects(eLink1, eAware);
            ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eLink1, OBJECT_SELF, RoundsToSeconds(10));
            ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_MIND_FORCE), OBJECT_SELF);
        }
        break;

        case SPECIAL_ABILITY_PSYCHIC_STANCE:
        {
            SWFP_HARMFUL = TRUE;
            SWFP_PRIVATE_SAVE_TYPE = SAVING_THROW_WILL;
            SWFP_PRIVATE_SAVE_VERSUS_TYPE = SAVING_THROW_TYPE_MIND_AFFECTING;

            eLink1 = EffectPsychicStatic();
            Sp_ApplyEffects(TRUE, oTarget, 10.0, 1000, eLink1, 20.0, eInvalid, 0.0);
        }
        break;

        /*
        Rage
        This ability allows Zaalbar to fly into a rage.
        When Zaalbar flies into a rage he gains +4 to his Strength and Constitution.  He also gains a +2 bonus on
        Fortitude and Will saves.  While raging Zaalbar cannot use any skills.  He also has a -4 penalty to his Defense rating.
        Interface: Mystical.  It takes one round to initiate the rage.
        Prerequisites: Nothing.  This is a unique NPC power.
        */
        case SPECIAL_ABILITY_RAGE:
        {
            SWFP_HARMFUL = FALSE;
            eLink1 = EffectLinkEffects(eLink1, EffectSavingThrowIncrease(SAVING_THROW_FORT, 2));
            eLink1 = EffectLinkEffects(eLink1, EffectSavingThrowIncrease(SAVING_THROW_WILL, 2));
            eLink1 = EffectLinkEffects(eLink1, EffectAbilityIncrease(ABILITY_CONSTITUTION, 4));
            eLink1 = EffectLinkEffects(eLink1, EffectAbilityIncrease(ABILITY_STRENGTH, 4));
            eLink1 = EffectLinkEffects(eLink1, EffectACDecrease(4));

            Sp_ApplyEffects(TRUE, OBJECT_SELF, 0.0, 1, eLink1, 30.0, eInvalid, 0.0);
        }
        break;

        case 83: //Monster Slam Attack
        {
            SP_MyPrintString("I am attempting to use monster slam");

            SWFP_HARMFUL = TRUE;
            SWFP_PRIVATE_SAVE_TYPE = SAVING_THROW_REFLEX;
            SWFP_DAMAGE = GetHitDice(OBJECT_SELF);
            SWFP_DAMAGE_TYPE = DAMAGE_TYPE_BLUDGEONING;

            eLink1 = EffectForcePushed();
            eLink2 = EffectStunned();
            effect eDamage = EffectDamage(GetHitDice(OBJECT_SELF), SWFP_DAMAGE_TYPE);

            if(!ReflexSave(oTarget, 15))
            {
                eDamage = EffectDamage(GetHitDice(OBJECT_SELF), SWFP_DAMAGE_TYPE);
                DelayCommand(0.5, SP_MyApplyEffectToObject(DURATION_TYPE_INSTANT, eDamage, oTarget));
                ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eLink1, oTarget, 0.25);
                DelayCommand(2.55, SP_MyApplyEffectToObject(DURATION_TYPE_TEMPORARY, eLink2, oTarget, 3.0));
            }
            else
            {
                eDamage = EffectDamage(GetHitDice(OBJECT_SELF)/2, SWFP_DAMAGE_TYPE);
                DelayCommand(0.5, SP_MyApplyEffectToObject(DURATION_TYPE_TEMPORARY, eLink1, oTarget, 0.25));
                ApplyEffectToObject(DURATION_TYPE_INSTANT, eDamage, oTarget);
                ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_FORCE_PUSH), oTarget);

            }
        }
        break;

        case 130: //Fire Breath Weapon
        {
            oTarget = GetSpellTargetObject();
            int nDC = 15;
            int nDamage = 40;
            effect eBeam = EffectBeam(2053, OBJECT_SELF, BODY_NODE_HEAD);
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
            DelayCommand(0.33, SP_MyApplyEffectToObject(DURATION_TYPE_TEMPORARY, eBump, oTarget, 1.5));
            if(ReflexSave(oTarget, nDC, SAVING_THROW_TYPE_FIRE))
            {
                nDamage /= 2;
            }
            effect eDam = EffectDamage(nDamage, DAMAGE_TYPE_FIRE);
            ApplyEffectToObject(DURATION_TYPE_INSTANT, eDam, oTarget);
        }
        break;

        case 131:
        {
            int nVFX = 3002;
            int nDC = 15;
            effect eDex = EffectAbilityDecrease(ABILITY_DEXTERITY, 3);
            eDex = SetEffectIcon(eDex, 41);
            ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(nVFX), OBJECT_SELF);
            oTarget = GetFirstObjectInShape(SHAPE_SPHERE, 10.0, GetSpellTargetLocation());
            while(GetIsObjectValid(oTarget))
            {
                if(GetIsEnemy(oTarget))
                {
                    if(!FortitudeSave(oTarget, nDC, SAVING_THROW_TYPE_SONIC))
                    {
                        ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eDex, oTarget, 30.0);
                    }
                }
                oTarget = GetNextObjectInShape(SHAPE_SPHERE, 4.0, GetSpellTargetLocation());
            }
        }
    }
}

//::///////////////////////////////////////////////
//:: While Loop Effect Delivery
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Uses these values to deliver the effects in the
    loop.

    SWFP_PRIVATE_SAVE_TYPE;
    SWFP_PRIVATE_SAVE_VERSUS_TYPE;
    SWFP_DAMAGE;
    SWFP_DAMAGE_TYPE;
    SWFP_DAMAGE_VFX;
*/
//:://////////////////////////////////////////////
//:: Created By: Preston Watamaniuk
//:: Created On: Aug 2, 2002
//:://////////////////////////////////////////////

void Sp_ApplyEffects(int nBlocking, object oAnchor, float fSize, int nCounter, effect eLink1, float fDuration1, effect eLink2, float fDuration2, int nRacial = RACIAL_TYPE_ALL)
{
    int nCnt = 0;
    object oTarget;
    //By setting the counter to 1 you specify a single target.
    //By setting the counter to 1000, you specify all targets in a shape.
    //By setting the counter to another number you specify that many targets maximum.
    if(nCounter > 1)
    {
        oTarget = GetFirstObjectInShape(SWFP_SHAPE, fSize, GetLocation(oAnchor));
    }
    else if(nCounter == 1)
    {
        oTarget = oAnchor;
    }
    while(GetIsObjectValid(oTarget) && nCnt < nCounter)
    {
        if(nRacial == GetRacialType(oTarget) || nRacial == RACIAL_TYPE_ALL)
        {
            int nIdx = 0; // Index for the for loop link application.
            effect eUse;  // Current effect to use
            float fUse;   // Current duration to use
            int nDamage;  // The damage as set from SWFP_DAMAGE
            int bFizzle;  // Tracks whether the Fizzle has played on the caster yet or not.
            effect eDamage; // The damage effect which will be linked after the saves are done and checked with blocking.
            if((GetIsEnemy(oTarget) && SWFP_HARMFUL == TRUE) || (GetIsFriend(oTarget) && SWFP_HARMFUL == FALSE))
            {
                SignalEvent(oTarget, EventSpellCastAt(OBJECT_SELF, GetSpellId(), SWFP_HARMFUL));
                //eDamage = EffectDamage(SWFP_DAMAGE, SWFP_DAMAGE_TYPE);
                int nResist = FALSE;
                int nSaves = -1;
                if(SWFP_HARMFUL == TRUE)
                {
                    nResist = Sp_BlockingChecks(oTarget, eLink1, eLink2, eDamage);
                }
                //By adding another index the number of links added to this function can increase.
                for(nIdx; nIdx <= 1; nIdx++)
                {
                    if(nIdx == 0)
                    {
                        eUse = eLink1;
                        fUse = fDuration1;
                    }
                    else
                    {
                        eUse = eLink2;
                        fUse = fDuration2;
                    }
                    if(nResist == FALSE)
                    {
                        //MODIFIED by Preston Watamaniuk March 23
                         //Moved the save call down to here from up above with the resist inorder to help
                         //feedback system not make useless save calls.
                        //MODIFIED by Preston Watamaniuk March 24
                         //Made the default value of nSave -1 so that I only do it once.
                        //MODIFIED by Preston Watamaniuk April 5
                         //Made sure to set nSaves to FALSE so that it would fall through the function.
                        if(SWFP_HARMFUL == TRUE && nSaves == -1)
                        {
                            nSaves = Sp_MySavingThrows(oTarget);
                        }
                        else
                        {
                            nSaves = FALSE;
                        }
                        if(nSaves == FALSE)
                        {
                            if(nIdx == 1 && SWFP_DAMAGE > 0)
                            //Damage effects are always linked to the eDamage effect which is kept seperate from
                            //all other eLink types coming in.
                            {
                                eDamage = EffectDamage(SWFP_DAMAGE, SWFP_DAMAGE_TYPE);
                                eDamage = EffectLinkEffects(eDamage, EffectVisualEffect(SWFP_DAMAGE_VFX));
                                ApplyEffectToObject(DURATION_TYPE_INSTANT, eDamage, oTarget);
                            }
                            if(GetIsEffectValid(eUse))
                            {
                                Sp_ApplyForcePowerEffects(fUse, eUse, oTarget);
                            }
                        }
                        //If the blocking flag is true then do not apply any effects on a save.
                        else if(nSaves > 0 && nBlocking == FALSE)
                        {
                            if(nIdx == 1 && SWFP_DAMAGE > 0)
                            {
                                SWFP_DAMAGE /= 2;
                                eDamage = EffectDamage(SWFP_DAMAGE, SWFP_DAMAGE_TYPE);
                                eDamage = EffectLinkEffects(eDamage, EffectVisualEffect(SWFP_DAMAGE_VFX));
                                ApplyEffectToObject(DURATION_TYPE_INSTANT, eDamage, oTarget);
                            }
                            if(GetIsEffectValid(eUse))
                            {
                                Sp_ApplyForcePowerEffects(fUse, eUse, oTarget);
                            }
                        }
                    }
                    if(nResist > 0 || (nSaves > 0 && nBlocking > 0))
                    {
                        if(bFizzle == FALSE)
                        {
                            ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectForceFizzle(), OBJECT_SELF);
                            bFizzle = TRUE;
                        }
                    }
                }
                nCnt++;
            }
        }
        oTarget = GetNextObjectInShape(SWFP_SHAPE, fSize, GetLocation(oAnchor), FALSE, OBJECT_TYPE_CREATURE | OBJECT_TYPE_PLACEABLE);
    }
}

//::///////////////////////////////////////////////
//:: Remove Buff Bonuses
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Goes through and removes all of the bonuses
    from people in a 30m radius from Force Mind,
    Knight Mind, Mind Mastery and Battle Meditation
*/
//:://////////////////////////////////////////////
//:: Created By: Preston Watamaniuk
//:: Created On: Aug 7, 2002
//:://////////////////////////////////////////////
void Sp_RemoveBuffSpell()
{
    object oTarget = GetFirstObjectInShape(SHAPE_SPHERE, 30.0, GetLocation(OBJECT_SELF));
    while(GetIsObjectValid(oTarget))
    {
        if(GetFactionEqual(oTarget))
        {
            //Declare major variables
            int bValid = FALSE;
            effect eAOE;
            if(GetHasSpellEffect(FORCE_POWER_FORCE_MIND, oTarget) ||
               GetHasSpellEffect(FORCE_POWER_MIND_MASTERY, oTarget) ||
               GetHasSpellEffect(FORCE_POWER_KNIGHT_MIND, oTarget) ||
               GetHasSpellEffect(SPECIAL_ABILITY_BATTLE_MEDITATION, oTarget))
            {
                //Search through the valid effects on the target.
                eAOE = GetFirstEffect(oTarget);
                while (GetIsEffectValid(eAOE) && bValid == FALSE)
                {
                    //If the effect was created by the spell then remove it
                    if(GetEffectSpellId(eAOE) == FORCE_POWER_FORCE_MIND ||
                       GetEffectSpellId(eAOE) == FORCE_POWER_MIND_MASTERY ||
                       GetEffectSpellId(eAOE) == FORCE_POWER_KNIGHT_MIND ||
                       GetEffectSpellId(eAOE) == SPECIAL_ABILITY_BATTLE_MEDITATION)
                    {
                        RemoveEffect(oTarget, eAOE);
                    }
                    //Get next effect on the target
                    eAOE = GetNextEffect(oTarget);
                }
            }
        }
        oTarget = GetNextObjectInShape(SHAPE_SPHERE, 30.0, GetLocation(OBJECT_SELF));
    }
}

//::///////////////////////////////////////////////
//:: Check for Appearance Type Turret
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Checks to see if the target is a Turret
*/
//:://////////////////////////////////////////////
//:: Created By: Preston Watamaniuk
//:: Created On: April 10, 2003
//:://////////////////////////////////////////////
int SP_CheckAppearanceTurret(object oTarget, int nFeedback = FALSE)
{
    int nCheck = FALSE;

    SP_MyPostString("Appearance = " + IntToString(GetAppearanceType(oTarget)));

    if(GetAppearanceType(oTarget) == 182 || GetAppearanceType(oTarget) == 183)
    {
        if(nFeedback == TRUE)
        {
            DisplayFeedBackText(oTarget, 1);
        }
        nCheck = TRUE;
    }
    return nCheck;
}

//::///////////////////////////////////////////////
//:: Check Droid Appearance Type
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Checks to see if the target is a Mark 1, 2, 4
    or Spyder Droid
*/
//:://////////////////////////////////////////////
//:: Created By: Preston Watamaniuk
//:: Created On: April 10, 2003
//:://////////////////////////////////////////////
int SP_CheckAppearanceGeoDroid(object oTarget)
{
    int nCheck = FALSE;
    if(GetAppearanceType(oTarget) == 59 ||
       GetAppearanceType(oTarget) == 60 ||
       GetAppearanceType(oTarget) == 61 ||
       GetAppearanceType(oTarget) == 65)
    {
        nCheck = TRUE;
    }
    return nCheck;
}

//::///////////////////////////////////////////////
//:: Check Droid Appearance Type and and Shields
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Checks to see if the target is a Mark 1, 2, 4
    or Spyder Droid and has a shield activated
*/
//:://////////////////////////////////////////////
//:: Created By: Preston Watamaniuk
//:: Created On: April 10, 2003
//:://////////////////////////////////////////////
int SP_CheckAppearanceGeoDroidShields(object oTarget, int nFeedback = FALSE)
{
    int nCheck = FALSE;
    if(GetAppearanceType(oTarget) == 59 ||
       GetAppearanceType(oTarget) == 60 ||
       GetAppearanceType(oTarget) == 61 ||
       GetAppearanceType(oTarget) == 65)
    {
        if(GetHasSpellEffect(110, oTarget) ||
           GetHasSpellEffect(111, oTarget) ||
           GetHasSpellEffect(112, oTarget) ||
           GetHasSpellEffect(113, oTarget) ||
           GetHasSpellEffect(114, oTarget) ||
           GetHasSpellEffect(115, oTarget))
         {
            if(nFeedback == TRUE)
            {
                DisplayFeedBackText(oTarget, 1);
            }

            nCheck = TRUE;
         }
    }
    return nCheck;
}

//::///////////////////////////////////////////////
//:: Force Push Viability
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Returns TRUE if the target can be force pushed
*/
//:://////////////////////////////////////////////
//:: Created By: Preston Watamaniuk
//:: Created On: June 12, 2003
//:://////////////////////////////////////////////
int SP_CheckForcePushViability(object oTarget, int Whirlwind)
{
    int bValid = FALSE;

    SP_MyPrintString("Push Check Start");
    if(GetCreatureSize(oTarget) != CREATURE_SIZE_LARGE &&
       GetCreatureSize(oTarget) != CREATURE_SIZE_HUGE)
    {
        SP_MyPrintString("Size is OK");
        if(SP_CheckAppearanceTurret(oTarget) == FALSE)
        {
            SP_MyPrintString("I am not a turret");
            if((Whirlwind == TRUE && SP_CheckAppearanceGeoDroidShields(oTarget) == FALSE) ||
                Whirlwind == FALSE)
            {
                SP_MyPrintString("I am whirlwind without droid shiled or not whirlwind");
                if(GetCreatureMovmentType(oTarget) != MOVEMENT_SPEED_IMMOBILE)
                {
                    SP_MyPrintString("Returning Push True");
                    bValid = TRUE;
                }
            }
        }
    }

    if(bValid == FALSE)
    {
        DisplayFeedBackText(oTarget, 1);
    }
    return bValid;
}


void SP_MyPrintString(string sString)
{
    if(!ShipBuild())
    {
        sString = "SPELL GENERIC DEBUG STRING: " + sString;
        PrintString(sString);
    }
}

void SP_MyPostString(string sString, int n1 = 5, int n2 = 10, float fTime = 4.0)
{
    sString = "DEBUG: " + sString;
    AurPostString(sString,10,10,3.0);
}


