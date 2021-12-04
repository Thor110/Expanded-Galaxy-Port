//:: k_pdan_cander03
/*
    Checks to see if DAN_CANDER_ZONE is 3. This determines
    the conversation Canderous starts. In this case he
    comments on the body of Casus Sandral. This message
    will not repeat since the trigger will destroy itself
    afterwards or check DAN_BODY_DONE to see if it has
    already been mentioned.
*/
//:: Created By: Peter T
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"

int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalNumber("DAN_CANDER_ZONE") == 3);
    if (iResult)
    {
        SetGlobalBoolean("DAN_BODY_DONE", TRUE);
        SetGlobalNumber("DAN_CANDER_ZONE", 0);
    }

    return iResult;
}

