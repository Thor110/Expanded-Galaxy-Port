//:: k_swg_hk4705
/*
    Picks one of the failure lines randomly
*/
//:: Created By: David Gaider
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

int StartingConditional()
{
    int iResult;

    iResult = d100() < Random(21);
    return iResult;
}
