//:: k_act_com45
/*
     Removes the correct amount of tokens
     and sets the boolean flag on the module
*/
//:: Created By: Preston Watamaniuk
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"
#include "k_inc_utility"
#include "k_inc_generic"

void main()
{
    int nAmount = UT_DeterminesItemCost(6, SKILL_REPAIR);
    UT_RemoveRepairParts(nAmount);
    UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_REPAIR_ACTIVATE_PATROL_ROUTE, TRUE);
}

