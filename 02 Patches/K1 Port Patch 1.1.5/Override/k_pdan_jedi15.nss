//:: k_pdan_jedi15
/*

*/
//:: Created By: Peter T
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"

int StartingConditional()
{
    int iResult;

    iResult = GetGlobalBoolean("DAN_EGGS_DONE");

    return iResult;
}
