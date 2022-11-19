//:: k_act_com43
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
    UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_REPAIR_TARGETING_COMPUTER, TRUE);

    effect eAcc = EffectAttackIncrease(4);
    ApplyEffectToObject(DURATION_TYPE_PERMANENT, eAcc, OBJECT_SELF);
}
