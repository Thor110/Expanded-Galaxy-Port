//:: k_pdan_bastila02
/*
    Checks to see if DAN_BASTILA_ZONE is 2. This determines
    the conversation Bastila starts. In this case she talks
    about the crystals in the kinrath cave. This message
    will not repeat since the trigger will destroy itself
    afterwards or check DAN_CRYSTAL_DONE to see if it has
    already been mentioned.
*/
//:: Created By: Peter T
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"

int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalNumber("DAN_BASTILA_ZONE") == 2);
    if (iResult)
    {
        SetGlobalBoolean("DAN_CRYSTAL_DONE", TRUE);
        SetGlobalNumber("DAN_BASTILA_ZONE", 0);
    }

    return iResult;
}
