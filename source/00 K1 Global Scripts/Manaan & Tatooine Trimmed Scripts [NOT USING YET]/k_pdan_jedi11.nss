//:: k_pdan_jedi11
/*

*/
//:: Created By: Peter T
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"

int StartingConditional()
{
    int iResult;

    iResult = GetGlobalBoolean("DAN_SOLD_DONE");

    return iResult;
}
