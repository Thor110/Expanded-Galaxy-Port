//:: k_con_comhack
/*
     Initial check to make sure
     the character has at least
     1 spike
*/
//:: Created By: Preston Watamaniuk
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"
#include "k_inc_utility"

int StartingConditional()
{
    Db_MyPrintString("Spikes = " + IntToString(UT_ReturnSpikePartAmount(SKILL_COMPUTER_USE)));
    if(UT_ReturnSpikePartAmount(SKILL_COMPUTER_USE) >= 1)
    {
        return TRUE;
    }
    return FALSE;
}
