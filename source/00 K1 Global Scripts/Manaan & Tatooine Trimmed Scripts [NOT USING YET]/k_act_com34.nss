//:: k_act_com34
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
    int nAmount = UT_DeterminesItemCost(10, SKILL_COMPUTER_USE);
    UT_RemoveComputerSpikes(nAmount);
    UT_SetPlotBooleanFlag(GetModule(), SW_PLOT_COMPUTER_MODIFY_DROID, TRUE);
}
