//:: k_con_com43
/*
     Checks custom token 43(4 Items Used before modified)
     for its value.
*/
//:: Created By: Preston Watamaniuk
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"
#include "k_inc_utility"

int StartingConditional()
{
    int nDC = 4;
    if(UT_ReturnSpikePartAmount(SKILL_REPAIR) >= UT_DeterminesItemCost(nDC, SKILL_REPAIR))
    {
        return TRUE;
    }
    return FALSE;
}
