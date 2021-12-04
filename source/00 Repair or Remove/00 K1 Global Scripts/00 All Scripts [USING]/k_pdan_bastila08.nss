//:: k_pdan_bastila08
/*
    Checks to see if DAN_BASTILA_ZONE is 8. This determines
    the conversation Bastila starts. In this case she tells
    the player that both computers need to be activated,
    not just one.
*/
//:: Created By: Peter T
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"

int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalNumber("DAN_BASTILA_ZONE") == 8);
    if (iResult)
        SetGlobalNumber("DAN_BASTILA_ZONE", 0);

    return iResult;
}

