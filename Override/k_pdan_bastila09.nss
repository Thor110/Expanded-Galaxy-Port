//:: k_pdan_bastila09
/*
    Checks to see if DAN_BASTILA_ZONE is 9. This determines
    the conversation Bastila starts. In this case she tells
    the player that they can now pass through the huge
    circular door.
*/
//:: Created By: Peter T
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"

int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalNumber("DAN_BASTILA_ZONE") == 9);
    if (iResult)
        SetGlobalNumber("DAN_BASTILA_ZONE", 0);

    return iResult;
}

