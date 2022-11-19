//:: k_act_com44
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
    int nAmount = UT_DeterminesItemCost(5, SKILL_REPAIR);
    UT_RemoveRepairParts(nAmount);
    UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_REPAIR_SHIELDS, TRUE);

    ApplyEffectToObject(DURATION_TYPE_TEMPORARY, EffectForceShield(SHIELD_DROID_ENVIRO_3), OBJECT_SELF, 5000.0);
}
