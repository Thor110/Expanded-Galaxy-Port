//:: k_pdan_bastila04
/*
    Checks to see if DAN_BASTILA_ZONE is 4. This determines
    the conversation Bastila starts. In this case she
    initiates the conversation that leads into the vision
    in the Rakata ruins. This message will not repeat since
    the trigger will destroy itself afterwards or check
    DAN_VISION_DONE to see if it has already been
    mentioned.
*/
//:: Created By: Peter T
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"

int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalNumber("DAN_BASTILA_ZONE") == 4);
    if (iResult)
    {
        SetGlobalBoolean("DAN_VISION_DONE", TRUE);
        SetGlobalNumber("DAN_BASTILA_ZONE", 0);
    }

    return iResult;
}

