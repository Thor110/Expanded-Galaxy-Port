//:: k_pdan_mission02
/*
    Checks to see if DAN_MISSION_ZONE is 2. This determines
    the conversation Mission starts. In this case she
    comments on the state of the body of Casus Sandral.
    This message will not repeat since the trigger will
    destroy itself afterwards or check DAN_MISSB_DONE to
    see if it has already been mentioned.
*/
//:: Created By: Peter T
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"

int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalNumber("DAN_MISSION_ZONE") == 2);
    if (iResult)
    {
        SetGlobalBoolean("DAN_MISSB_DONE", TRUE);
        SetGlobalNumber("DAN_MISSION_ZONE", 0);
    }

    return iResult;
}

