//:: k_act_com42
/*
     Removes the correct amount of tokens
     and sets the boolean flag on the module
*/
//:: Created By: Preston Watamaniuk
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"
#include "k_inc_utility"

void main()
{
    int nAmount = UT_DeterminesItemCost(4, SKILL_REPAIR);
    UT_RemoveRepairParts(nAmount);
    UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_REPAIR_WEAPONS, TRUE);

    effect eDam = EffectDamageIncrease(DAMAGE_BONUS_1d8, DAMAGE_TYPE_BLASTER);
    ApplyEffectToObject(DURATION_TYPE_PERMANENT, eDam, OBJECT_SELF);

}
