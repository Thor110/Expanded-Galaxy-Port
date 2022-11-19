//:: k_con_com34
/*
     Checks custom token 34 (10 Items Used before modified)
     for its value.
*/
//:: Created By: Preston Watamaniuk
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"
#include "k_inc_utility"

int StartingConditional()
{
    int nDC = 10;
    if(UT_ReturnSpikePartAmount(SKILL_COMPUTER_USE) >= UT_DeterminesItemCost(nDC, SKILL_COMPUTER_USE))
    {
        return TRUE;
    }
    return FALSE;
}
