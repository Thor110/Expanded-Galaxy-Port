//:: k_pdan_carth01
/*
    Checks to see if DAN_CARTH_ZONE is 1 and the Carth is
    in the party. This determines the conversation Carth
    starts. In this case he talks about the huge circular
    door in the Rakata ruins. This message will not repeat
    since the trigger will destroy itself afterwards or
    check DAN_DOOR_DONE to see if it has already been
    mentioned.
*/
//:: Created By: Peter T
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"

int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalNumber("DAN_CARTH_ZONE") == 1) && (IsNPCPartyMember(NPC_CARTH)));
    if (iResult)
    {
        SetGlobalBoolean("DAN_DOOR_DONE", TRUE);
        SetGlobalNumber("DAN_CARTH_ZONE", 0);
    }

    return iResult;
}

