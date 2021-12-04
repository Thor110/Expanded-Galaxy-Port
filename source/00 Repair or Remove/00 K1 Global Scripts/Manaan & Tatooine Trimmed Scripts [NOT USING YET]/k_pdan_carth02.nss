//:: k_pdan_carth01
/*
    Checks to see if DAN_CARTH_ZONE is 1. This determines
    the conversation Carth starts. In this case he warns
    about the dangers of the plains. This message will not
    repeat since the trigger will destroy itself afterwards
    or check DAN_PLAINS_DONE to see if it has already been
    mentioned.
*/
//:: Created By: Peter T
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"

int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalNumber("DAN_CARTH_ZONE") == 2);
    if (iResult)
    {
        SetGlobalBoolean("DAN_PLAINS_DONE", TRUE);
        SetGlobalNumber("DAN_CARTH_ZONE", 0);
    }

    return iResult;
}

