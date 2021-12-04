//:: k_con_com31
/*
     Checks custom token 31 (3 Items Used before modified)
     for its value.
*/
//:: Created By: Preston Watamaniuk
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"
#include "k_inc_utility"

int StartingConditional()
{
    int nDC = 3;
    Db_MyPrintString("Spikes = " + IntToString(UT_ReturnSpikePartAmount(SKILL_COMPUTER_USE)) + " Cost = " +  IntToString(UT_DeterminesItemCost(nDC, SKILL_COMPUTER_USE)));

    if(UT_ReturnSpikePartAmount(SKILL_COMPUTER_USE) >= UT_DeterminesItemCost(nDC, SKILL_COMPUTER_USE))
    {
        return TRUE;
    }
    return FALSE;
}
