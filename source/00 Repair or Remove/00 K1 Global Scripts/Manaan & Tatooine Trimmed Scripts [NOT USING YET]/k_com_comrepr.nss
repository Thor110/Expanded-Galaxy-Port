//:: k_con_comrepr
/*
     Initial check to make sure
     the character has at least
     1 part
*/
//:: Created By: Preston Watamaniuk
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"
#include "k_inc_utility"

int StartingConditional()
{
    if(UT_ReturnSpikePartAmount(SKILL_REPAIR) >= 1)
    {
        return TRUE;
    }
    return FALSE;
}

