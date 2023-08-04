//:: k_pdan_carth04
/*

*/
//:: Created By: Peter T
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"

int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalNumber("DAN_CARTH_ZONE") == 4);

    return iResult;
}

