//:: k_pdan_juhani04
/*
    Checks to see if DAN_JUHANI_PLOT is 3 (meaning that
    the player has saved Juhani) and DAN_NEMOJ_DONE is
    FALSE (meaning that Nemo has not yet spoken to the
    player about Juhani). This conversation will not
    repeat since DAN_NEMOJ_DONE is set to TRUE to show
    that this conversation has taken place.
*/
//:: Created By: Peter T
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"

int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalNumber("DAN_JUHANI_PLOT") == 3) && (GetGlobalBoolean("DAN_NEMOJ_DONE") == FALSE));
    if (iResult)
        SetGlobalBoolean("DAN_NEMOJ_DONE", TRUE);

    return iResult;
}

