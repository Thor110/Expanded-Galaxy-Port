//:: k_pdan_juhani03
/*
    Checks to see if DAN_JUHANI_DONE is false. This
    determines if the player has spoken to Juhani since
    rescuing her. This message will not repeat since it
    will check DAN_JUHANI_DONE to see if it has already
    been done.
*/
//:: Created By: Peter T
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"

int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalNumber("DAN_JUHANI_PLOT") == 3) && (GetGlobalBoolean("DAN_JUHANI_DONE") == FALSE));
    if (iResult)
        SetGlobalBoolean("DAN_JUHANI_DONE", TRUE);

    return iResult;
}

