//:: k_pdan_romance20
/*
    Checks if DAN_LEAVE_DONE is TRUE, meaning that
    Rahasia has said she'll leave with Shen.
*/
//:: Created By: Peter T
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"

int StartingConditional()
{
    int iResult;

    iResult = GetGlobalBoolean("DAN_LEAVE_DONE");

    return iResult;
}

