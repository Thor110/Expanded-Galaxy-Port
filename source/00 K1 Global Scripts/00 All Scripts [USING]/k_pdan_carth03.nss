//:: k_pdan_carth02
/*
    Checks to see if DAN_CARTH_ZONE is 2. This determines
    the conversation Carth starts. In this case he warns
    about the patrolling droids. This message will not
    repeat since the trigger will destroy itself afterwards
    or check DAN_DROIDS_DONE to see if it has already been
    mentioned.
*/
//:: Created By: Peter T
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"

int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalNumber("DAN_CARTH_ZONE") == 3);
    if (iResult)
    {
        SetGlobalBoolean("DAN_DROIDS_DONE", TRUE);
        SetGlobalNumber("DAN_CARTH_ZONE", 0);
    }

    return iResult;
}

