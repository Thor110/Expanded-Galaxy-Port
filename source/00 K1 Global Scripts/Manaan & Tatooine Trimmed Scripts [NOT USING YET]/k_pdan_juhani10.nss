//:: k_pdan_juhani10
/*
    Checks to see if DAN_JUHANI_PLOT is 2 (meaning that
    Juhani has been killed by the player) and that
    DAN_ZHARJ_DONE is FALSE (meaning that Zhar has not
    yet talked to the player about Juhani). This
    conversation will not repeat since DAN_ZHARJ_DONE is
    set to TRUE to show that this conversation has taken
    place.
*/
//:: Created By: Peter T
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"

int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalNumber("DAN_JUHANI_PLOT") == 2) && (GetGlobalBoolean("DAN_ZHARJ_DONE") == FALSE));
    if (iResult)
        SetGlobalBoolean("DAN_ZHARJ_DONE", TRUE);

    return iResult;
}

