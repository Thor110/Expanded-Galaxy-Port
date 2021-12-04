//:: k_pdan_romance18
/*
    Checks if DAN_SHEN_DONE is TRUE, meaning that Shen has
    said he won't leave without Rahasia.
*/
//:: Created By: Peter T
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"

int StartingConditional()
{
    int iResult;

    iResult = GetGlobalBoolean("DAN_SHEN_DONE");

    return iResult;
}

