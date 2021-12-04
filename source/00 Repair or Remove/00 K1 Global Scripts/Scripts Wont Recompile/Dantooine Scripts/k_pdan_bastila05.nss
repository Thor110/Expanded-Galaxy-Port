//:: k_pdan_bastila05
/*
    Checks to see if DAN_BASTILA_ZONE is 5 and if Bastila
    is a member of the party. This determines the
    conversation Bastila starts. In this case she talks
    about the huge circular door in the Rakata ruins. This
    message will not repeat since the trigger will
    destroy itself afterwards or check DAN_DOOR_DONE to
    see if it has already been mentioned.
*/
//:: Created By: Peter T
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"

int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalNumber("DAN_BASTILA_ZONE") == 5) && (IsNPCPartyMember(NPC_BASTILA)));
    if (iResult)
    {
        SetGlobalBoolean("DAN_DOOR_DONE", TRUE);
        SetGlobalNumber("DAN_BASTILA_ZONE", 0);
    }

    return iResult;
}


