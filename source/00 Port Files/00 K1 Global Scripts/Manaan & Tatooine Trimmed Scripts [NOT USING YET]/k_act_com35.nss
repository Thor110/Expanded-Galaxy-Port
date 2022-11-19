//:: k_act_com35
/*
     Removes the correct amount of tokens
*/
//:: Created By: Peter T.
//:: Copyright (c) 2003 Bioware Corp.

#include "k_inc_debug"
#include "k_inc_utility"

void main()
{
    int nAmount = UT_DeterminesItemCost(2, SKILL_COMPUTER_USE);
    UT_RemoveComputerSpikes(nAmount);
}
