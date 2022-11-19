//:: k_con_com33
/*
     Checks custom token 33 (8 Items Used before modified)
     for its value.
*/
//:: Created By: Preston Watamaniuk
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"
#include "k_inc_utility"

int StartingConditional()
{
    int nDC = 8;
    if(UT_ReturnSpikePartAmount(SKILL_COMPUTER_USE) >= UT_DeterminesItemCost(nDC, SKILL_COMPUTER_USE))
    {
        return TRUE;
    }
    return FALSE;
}
