//:: k_con_com35
/*
     Checks custom token 35 (2 Items Used before modified)
     for its value.
*/
//:: Created By: Peter T.
//:: Copyright (c) 2003 Bioware Corp.

#include "k_inc_debug"
#include "k_inc_utility"

int StartingConditional()
{
    int nDC = 2;
    if(UT_ReturnSpikePartAmount(SKILL_COMPUTER_USE) >= UT_DeterminesItemCost(nDC, SKILL_COMPUTER_USE))
    {
        return TRUE;
    }
    return FALSE;
}
