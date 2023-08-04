//:: k_pdan_bastila07
/*
    Checks to see if DAN_BASTILA_ZONE is 7. This determines
    the conversation Bastila starts. In this case she asks
    if the player wants to see the vision of Revan and
    Malak again.
*/
//:: Created By: Peter T
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"

int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalNumber("DAN_BASTILA_ZONE") == 7);
    if (iResult)
        SetGlobalNumber("DAN_BASTILA_ZONE", 0);

    return iResult;
}

