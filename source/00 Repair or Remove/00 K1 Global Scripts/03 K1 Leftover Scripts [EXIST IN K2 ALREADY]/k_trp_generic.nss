//:: k_trp_generic
/*
    Generic Trap Scripts
Trap Name	Trap Animation	Effect  minor	Effect average	Effect deadly
Flash Stun
    A bright light explodes.
    Save at DC 15 or be stunned.
    Save at DC 20 or be stunned.
    Save at DC 25 or be stunned.
Fragmentation Mine
    Conventional explosion
    Explodes for 3-18 damage in medium radius.
    Explodes for 5-30 damage in medium radius.
    Explodes for 9-54 damage in medium radius.
Laser Slice Trap
    Lasers shoot out from floor and flay a character.
    Lasers cut up one target for 4-24 damage.
    Lasers cut up one target for 7-42 damage.
    Lasers cut up one target for 12-72 damage.
Gas Trap
    Gas shoots out and poisons everyone
    Inflicts a mild poison on everyone in a medium radius.
    Inflicts a average poison on everyone in a medium radius.
    Inflicts a virulent poison on everyone in a medium radius.
*/
//:: Created By: Preston Watamaniuk
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"
void main()
{
    int nDC;
    object oTarget;
    int nTrapID = GetTrapBaseType(OBJECT_SELF);
    location lTrap = GetLocation(OBJECT_SELF);

    Db_PostString("Trap Fired", 5,5,4.0);

    //FLASH STUN MINE
    if( nTrapID == TRAP_BASE_TYPE_FLASH_STUN_MINOR ||
        nTrapID == TRAP_BASE_TYPE_FLASH_STUN_AVERAGE ||
        nTrapID == TRAP_BASE_TYPE_FLASH_STUN_DEADLY )
    {
        //The only difference between the flash traps is the DC.  Therefore I am
        //using 1 section of the if statement.
        if(nTrapID == TRAP_BASE_TYPE_FLASH_STUN_MINOR) {nDC = 15 ;}
        if(nTrapID == TRAP_BASE_TYPE_FLASH_STUN_AVERAGE) {nDC = 20 ;}
        if(nTrapID == TRAP_BASE_TYPE_FLASH_STUN_DEADLY) {nDC = 25 ;}

        effect eStun = EffectStunned();
        oTarget = GetFirstObjectInShape(SHAPE_SPHERE, 3.3, lTrap, TRUE);
        while(GetIsObjectValid(oTarget))
        {
            if(!WillSave(oTarget, 15) && GetRacialType(oTarget) != RACIAL_TYPE_DROID && !GetIsNeutral(oTarget, OBJECT_SELF))
            {
                ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eStun, oTarget, RoundsToSeconds(3));
            }
            oTarget = GetNextObjectInShape(SHAPE_SPHERE, 3.3, lTrap, TRUE);
        }
    }
    //FRAGMENTATION MINE
    else if(nTrapID == TRAP_BASE_TYPE_FRAGMENTATION_MINE_MINOR  ||
            nTrapID == TRAP_BASE_TYPE_FRAGMENTATION_MINE_AVERAGE ||
            nTrapID == TRAP_BASE_TYPE_FRAGMENTATION_MINE_DEADLY)
    {
        int nDice;
        int nDamage;
        effect eDamage;
        //The only difference between the frag traps is the damage.  Therefore I am
        //using 1 section of the if statement.
        if(nTrapID == TRAP_BASE_TYPE_FRAGMENTATION_MINE_MINOR) {nDamage = 18; nDC = 15;}
        if(nTrapID == TRAP_BASE_TYPE_FRAGMENTATION_MINE_AVERAGE) {nDamage = 30; nDC = 20;}
        if(nTrapID == TRAP_BASE_TYPE_FRAGMENTATION_MINE_DEADLY) {nDamage = 54; nDC = 25;}

        oTarget = GetFirstObjectInShape(SHAPE_SPHERE, 3.3, lTrap, TRUE);
        while(GetIsObjectValid(oTarget))
        {
            if(!GetIsNeutral(oTarget, OBJECT_SELF))
            {
                nDamage = GetReflexAdjustedDamage(nDamage, oTarget, nDC);
                eDamage = EffectDamage(nDamage, DAMAGE_TYPE_PIERCING);
                ApplyEffectToObject(DURATION_TYPE_INSTANT, eDamage, oTarget);
            }
            oTarget = GetNextObjectInShape(SHAPE_SPHERE, 3.3, lTrap, TRUE);
        }
    }
    //LASER SLICING TRAP - THIS IS NOW THE PLASMA MINE
    else if(nTrapID == TRAP_BASE_TYPE_LASER_SLICING_MINOR ||
            nTrapID == TRAP_BASE_TYPE_LASER_SLICING_AVERAGE ||
            nTrapID == TRAP_BASE_TYPE_LASER_SLICING_DEADLY )
    {
        ApplyEffectAtLocation(DURATION_TYPE_INSTANT, EffectVisualEffect(1044),GetLocation(OBJECT_SELF));
        int nDice;
        int nDamage;
        effect eDamage;
        //The only difference between the laser slicing traps is the damage.  Therefore I am
        //using 1 section of the if statement.
        if(nTrapID == TRAP_BASE_TYPE_LASER_SLICING_MINOR) {nDamage = 24; nDC = 15;}
        if(nTrapID == TRAP_BASE_TYPE_LASER_SLICING_AVERAGE) {nDamage = 42; nDC = 20;}
        if(nTrapID == TRAP_BASE_TYPE_LASER_SLICING_DEADLY) {nDamage = 72; nDC = 25;}

        oTarget = GetFirstObjectInShape(SHAPE_SPHERE, 3.3, lTrap, TRUE);
        while(GetIsObjectValid(oTarget))
        {
            if(!GetIsNeutral(oTarget, OBJECT_SELF))
            {
                nDamage = GetReflexAdjustedDamage(nDamage, oTarget, nDC);
                eDamage = EffectDamage(nDamage, DAMAGE_TYPE_BLASTER);
                ApplyEffectToObject(DURATION_TYPE_INSTANT, eDamage, oTarget);
            }
            oTarget = GetNextObjectInShape(SHAPE_SPHERE, 3.3, lTrap, TRUE);
        }
    }
    //GAS POISON TRAP
    else if(nTrapID == TRAP_BASE_TYPE_POISON_GAS_MINOR ||
                       TRAP_BASE_TYPE_POISON_GAS_AVERAGE ||
                       TRAP_BASE_TYPE_POISON_GAS_DEADLY)
    {
        effect ePoison;
        //The only difference between the poison traps is the poison type.  Therefore I am
        //using 1 section of the if statement.
        if(nTrapID == TRAP_BASE_TYPE_POISON_GAS_MINOR) {ePoison = EffectPoison(POISON_DAMAGE_MILD);}
        if(nTrapID == TRAP_BASE_TYPE_POISON_GAS_AVERAGE) {ePoison = EffectPoison(POISON_DAMAGE_AVERAGE);}
        if(nTrapID == TRAP_BASE_TYPE_POISON_GAS_DEADLY) {ePoison = EffectPoison(POISON_DAMAGE_VIRULENT);}

        oTarget = GetFirstObjectInShape(SHAPE_SPHERE, 3.3, lTrap, TRUE);
        while(GetIsObjectValid(oTarget))
        {
            if(GetRacialType(oTarget) != RACIAL_TYPE_DROID  && !GetIsNeutral(oTarget, OBJECT_SELF))
            {
                ApplyEffectToObject(DURATION_TYPE_PERMANENT, ePoison, oTarget);
            }
            oTarget = GetNextObjectInShape(SHAPE_SPHERE, 3.3, lTrap, TRUE);
        }
    }
}
