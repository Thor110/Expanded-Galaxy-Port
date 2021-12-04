//:: k_pdan_bastila06
/*
    Checks to see if DAN_BASTILA_ZONE is 6. This determines
    the conversation Bastila starts. In this case she tells
    the player to find energy crystals to power the
    computer.
*/
//:: Created By: Peter T
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"

int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalNumber("DAN_BASTILA_ZONE") == 6);
    if (iResult)
        SetGlobalNumber("DAN_BASTILA_ZONE", 0);

    return iResult;
}

