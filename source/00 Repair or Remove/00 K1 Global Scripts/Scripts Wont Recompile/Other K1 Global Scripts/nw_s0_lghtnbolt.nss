// WARNING : THIS IS A HACKED TOGETHER PIECE OF CRAP
// FOR MAKESHIFT PURPOSES ONLY
// Jason Spykerman, May 1, 2002









//::///////////////////////////////////////////////
//:: Spells Include
//:: NW_I0_SPELLS
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Preston Watamaniuk
//:: Created On: Jan 2, 2002
//:://////////////////////////////////////////////

//Used to route the resist magic checks into this function to check for spell countering by SR, Globes or Mantles.
int MyResistSpell(object oCaster, object oTarget, float fDelay = 0.0);
//Used to route the saving throws through this function to check for spell countering by a saving throw.
int MySavingThrow(int nSavingThrow, object oTarget, int nDC, int nSaveType=SAVING_THROW_TYPE_NONE, object oSaveVersus = OBJECT_SELF, float fDelay = 0.0);
//Will pass back a linked effect for all the protection from alignment spells.  The power represents the multiplier of strength.
//That is instead of +3 AC and +2 Saves a  power of 2 will yield +6 AC and +4 Saves.
effect CreateProtectionFromAlignmentLink(int nAlignment, int nPower = 1);
//Will pass back a linked effect for all of the doom effects.
effect CreateDoomEffectsLink();
//Searchs through a persons effects and removes those from a particular spell by a particular caster.
void RemoveSpellEffects(int nSpell_ID, object oCaster, object oTarget);
//Searchs through a persons effects and removes all those of a specific type.
void RemoveSpecificEffect(int nEffectTypeID, object oTarget);
//Returns the time in seconds that the effect should be delayed before application.
float GetSpellEffectDelay(location SpellTargetLocation, object oTarget);
//This allows the application of a random delay to effects based on time parameters passed in.  Min default = 0.4, Max default = 1.1
float GetRandomDelay(float fMinimumTime = 0.4, float MaximumTime = 1.1);
// Get Difficulty Duration
int GetScaledDuration(int nActualDuration, object oTarget);
// Get Scaled Effect
effect GetScaledEffect(effect eStandard, object oTarget);
//Remove all spell protections of a specific type
int RemoveProtections(int nSpell_ID, object oTarget, int nCount);
//
int GetSpellBreachProtection(int nLastChecked);
//Assigns a debug string to the Area of Effect Creator
void AssignAOEDebugString(string sString);


int MyResistSpell(object oCaster, object oTarget, float fDelay = 0.0)
{
    if (fDelay > 0.5)
    {
        fDelay = fDelay - 0.1;
    }
    int nResist = ResistSpell(oCaster, oTarget);
    effect eSR = EffectVisualEffect(VFX_IMP_MAGIC_RESISTANCE_USE);
    effect eGlobe = EffectVisualEffect(VFX_IMP_GLOBE_USE);
    effect eMantle = EffectVisualEffect(VFX_IMP_SPELL_MANTLE_USE);
    if(nResist == 1) //Spell Resistance
    {
        DelayCommand(fDelay, ApplyEffectToObject(DURATION_TYPE_INSTANT, eSR, oTarget));
    }
    else if(nResist == 2) //Globe
    {
        DelayCommand(fDelay, ApplyEffectToObject(DURATION_TYPE_INSTANT, eGlobe, oTarget));
    }
    else if(nResist == 3) //Spell Mantle
    {
        if (fDelay > 0.5)
        {
            fDelay = fDelay - 0.1;
        }
        DelayCommand(fDelay, ApplyEffectToObject(DURATION_TYPE_INSTANT, eMantle, oTarget));
    }
    return nResist;
}

int MySavingThrow(int nSavingThrow, object oTarget, int nDC, int nSaveType=SAVING_THROW_TYPE_NONE, object oSaveVersus = OBJECT_SELF, float fDelay = 0.0)
{
    effect eVis;
    int bValid = FALSE;
    int nSpellID;
    if(nSavingThrow == SAVING_THROW_FORT)
    {
        bValid = FortitudeSave(oTarget, nDC, nSaveType, oSaveVersus);
        if(bValid == 1)
        {
            eVis = EffectVisualEffect(VFX_IMP_FORTITUDE_SAVING_THROW_USE);
        }
    }
    else if(nSavingThrow == SAVING_THROW_REFLEX)
    {
        bValid = ReflexSave(oTarget, nDC, nSaveType, oSaveVersus);
        if(bValid == 1)
        {
            eVis = EffectVisualEffect(VFX_IMP_REFLEX_SAVE_THROW_USE);
        }
    }
    else if(nSavingThrow == SAVING_THROW_WILL)
    {
        bValid = WillSave(oTarget, nDC, nSaveType, oSaveVersus);
        if(bValid == 1)
        {
            eVis = EffectVisualEffect(VFX_IMP_WILL_SAVING_THROW_USE);
        }
    }

    nSpellID = GetSpellId();

    /*
        return 0 = FAILED SAVE
        return 1 = SAVE SUCCESSFUL
        return 2 = IMMUNE TO WHAT WAS BEING SAVED AGAINST
    */

    if(bValid == 0)
    {
        if(nSaveType == SAVING_THROW_TYPE_DEATH || nSpellID == SPELL_WEIRD || nSpellID == SPELL_PHANTASMAL_KILLER)
        {
            eVis = EffectVisualEffect(VFX_IMP_DEATH);
            DelayCommand(fDelay, ApplyEffectToObject(DURATION_TYPE_INSTANT, eVis, oTarget));
        }
    }
    if(bValid == 2)
    {
        eVis = EffectVisualEffect(VFX_IMP_MAGIC_RESISTANCE_USE);
    }
    if(bValid == 1 || bValid == 2)
    {
        if(bValid == 2)
        {
            /*
            If the spell is save immune then the link must be applied in order to get the true immunity
            to be resisted.  That is the reason for returing false and not true.  True blocks the
            application of effects.
            */
            bValid = FALSE;
        }
        DelayCommand(fDelay, ApplyEffectToObject(DURATION_TYPE_INSTANT, eVis, oTarget));
    }
    return bValid;
}

effect CreateProtectionFromAlignmentLink(int nAlignment, int nPower = 1)
{
    effect eAC = EffectACIncrease((nPower*3), AC_DEFLECTION_BONUS);
    eAC = VersusAlignmentEffect(eAC, nAlignment);
    effect eSave = EffectSavingThrowIncrease(SAVING_THROW_ALL, (nPower*2));
    eSave = VersusAlignmentEffect(eSave, nAlignment);
    effect eImmune = EffectImmunity(IMMUNITY_TYPE_MIND_SPELLS);
    eImmune = VersusAlignmentEffect(eImmune, nAlignment);
    effect eDur;
    if(nAlignment == ALIGNMENT_EVIL)
    {
        eDur = EffectVisualEffect(VFX_DUR_PROTECTION_GOOD_MINOR);
    }
    else if(nAlignment == ALIGNMENT_GOOD)
    {
        eDur = EffectVisualEffect(VFX_DUR_PROTECTION_EVIL_MINOR);
    }

    effect eDur2 = EffectVisualEffect(VFX_DUR_CESSATE_POSITIVE);
    effect eLink = EffectLinkEffects(eImmune, eSave);
    eLink = EffectLinkEffects(eLink, eAC);
    eLink = EffectLinkEffects(eLink, eDur);
    eLink = EffectLinkEffects(eLink, eDur2);
    return eLink;
}

effect CreateDoomEffectsLink()
{
    //Declare major variables
    effect eSaves = EffectSavingThrowDecrease(SAVING_THROW_ALL, 2);
    effect eAttack = EffectAttackDecrease(2);
    effect eDamage = EffectDamageDecrease(2);
//    effect eSkill = EffectSkillDecrease(SKILL_ALL_SKILLS, 2);
    effect eDur = EffectVisualEffect(VFX_DUR_CESSATE_NEGATIVE);

    effect eLink = EffectLinkEffects(eAttack, eDamage);
    eLink = EffectLinkEffects(eLink, eSaves);
  //  eLink = EffectLinkEffects(eLink, eSkill);
    eLink = EffectLinkEffects(eLink, eDur);

    return eLink;
}

void RemoveSpellEffects(int nSpell_ID, object oCaster, object oTarget)
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

void RemoveSpecificEffect(int nEffectTypeID, object oTarget)
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

float GetSpellEffectDelay(location SpellTargetLocation, object oTarget)
{
    float fDelay;
    return fDelay = GetDistanceBetweenLocations(SpellTargetLocation, GetLocation(oTarget))/20;
}

float GetRandomDelay(float fMinimumTime = 0.4, float MaximumTime = 1.1)
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

//int GetScaledDuration(int nActualDuration, object oTarget)
//{

//    int nDiff = GAME_DIFFICULTY_VERY_EASY;
 //   int nNew = nActualDuration;
 //   if(GetIsPC(oTarget))
  //  {
 //       if(nDiff == GAME_DIFFICULTY_VERY_EASY || nDiff == GAME_DIFFICULTY_EASY)
  //      {
  //          nNew = nActualDuration / 4;
  //      }
 //       else if(nDiff == GAME_DIFFICULTY_NORMAL)
 //       {
  //          nNew = nActualDuration / 2;
 //       }
 //       if(nNew == 0)
  //      {
 //           nNew = 1;
//        }
 //   }
 //   return nNew;
//}

// effect GetScaledEffect(effect eStandard, object oTarget)
// {
 //   int nDiff = GAME_DIFFICULTY_VERY_EASY;
 //   effect eNew = eStandard;
 //   if(GetIsPC(oTarget))
 //   {
  //      if(nDiff == GAME_DIFFICULTY_VERY_EASY || nDiff == GAME_DIFFICULTY_EASY || nDiff == GAME_DIFFICULTY_NORMAL)
 //       {
  //          eNew = EffectDazed();
  //      }
  //  }
 //   return eNew;
//}
//
//int RemoveProtections(int nSpell_ID, object oTarget, int nCount)
//{
    //Declare major variables
 //   effect eProtection;
 //   int nCnt = 0;
 //   if(GetHasSpellEffect(nSpell_ID, oTarget))
 //   {
        //Search through the valid effects on the target.
  //      eProtection = GetFirstEffect(oTarget);
  //      while (GetIsEffectValid(eProtection))
  //      {
            //If the effect was created by the spell then remove it
   //         if(GetEffectSpellId(eProtection) == nSpell_ID)
  //          {
   //             RemoveEffect(oTarget, eProtection);
                //return 1;
   //             nCnt++;
   //         }
            //Get next effect on the target
  //          eProtection = GetNextEffect(oTarget);
  //      }
 //   }
 //   if(nCnt > 0)
 //   {
 //       return 1;
 //   }
//    else
//    {
 //       return 0;
 //   }
//}


// }

void main()
{
    //Declare major variables
    int nCasterLevel = GetCasterLevel(OBJECT_SELF);
    //Limit caster level
    if (nCasterLevel > 10)
    {
        nCasterLevel = 10;
    }
    int nDamage;
    int nMetaMagic = GetMetaMagicFeat();
    //Set the lightning stream to start at the caster's hands
    effect eLightning = EffectBeam(VFX_BEAM_LIGHTNING, OBJECT_SELF, BODY_NODE_HAND);
    effect eVis  = EffectVisualEffect(VFX_IMP_LIGHTNING_S);
    effect eDamage;
    object oTarget = GetSpellTargetObject();
    location lTarget = GetLocation(oTarget);
    object oNextTarget;
    //Get first target in the lightning area by passing in the location of first target and the casters vector (position)
    oTarget = GetFirstObjectInShape(SHAPE_SPELLCYLINDER, 30.0, lTarget, TRUE, OBJECT_TYPE_CREATURE, GetPosition(OBJECT_SELF));
    while (GetIsObjectValid(oTarget))
    {
       //Exclude the caster from the damage effects
       if (oTarget != OBJECT_SELF)
       {
        	if(!GetIsReactionTypeFriendly(oTarget))
        	{
               //Fire cast spell at event for the specified target
               SignalEvent(oTarget, EventSpellCastAt(OBJECT_SELF, SPELL_LIGHTNING_BOLT));
               //Make an SR check
               if (!MyResistSpell(OBJECT_SELF, oTarget))
    	       {
                    //Roll damage
                    nDamage =  d6(nCasterLevel);
    		        //Enter Metamagic conditions
    		        if (nMetaMagic == METAMAGIC_MAXIMIZE)
    		        {
    			         nDamage = 6 * nCasterLevel;//Damage is at max
                    }
    		        if (nMetaMagic == METAMAGIC_EMPOWER)
    		        {
    			         nDamage = nDamage + (nDamage/2); //Damage/Healing is +50%
                    }
                    //Adjust damage based on Reflex Save, Evasion and Improved Evasion
                    nDamage = GetReflexAdjustedDamage(nDamage, oTarget, GetSpellSaveDC(),SAVING_THROW_TYPE_ELECTRICITY);
                    //Set damage effect
                    eDamage = EffectDamage(nDamage, DAMAGE_TYPE_ELECTRICAL);
                    if(nDamage > 0)
                    {
                        //Apply VFX impcat, damage effect and lightning effect
                        ApplyEffectToObject(DURATION_TYPE_INSTANT,eDamage,oTarget);
                        ApplyEffectToObject(DURATION_TYPE_INSTANT,eVis,oTarget);
                        ApplyEffectToObject(DURATION_TYPE_TEMPORARY,eLightning,oTarget,2.0);
                    }
                }
                //Set the currect target as the holder of the lightning effect
                oNextTarget = oTarget;
                eLightning = EffectBeam(VFX_BEAM_LIGHTNING, oNextTarget, BODY_NODE_CHEST);
            }
        }
        //Get the next object in the lightning cylinder
        oTarget = GetNextObjectInShape(SHAPE_SPELLCYLINDER, 30.0, lTarget, TRUE, OBJECT_TYPE_CREATURE, GetPosition(OBJECT_SELF));
    }
}

