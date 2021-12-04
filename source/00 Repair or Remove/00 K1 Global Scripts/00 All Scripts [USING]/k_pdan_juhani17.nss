//:: k_pdan_juhani17
/*
    Checks to see if DAN_JUHANI_PLOT is 2 (meaning that
    the player has killed Juhani) and DAN_VROOKJ_DONE is
    FALSE (meaning that Vrook has not talked to the
    player yet about Juhani). This conversation will not
    repeat since DAN_VROOKJ_DONE is set to TRUE to show
    that this conversation has taken place.
*/
//:: Created By: Peter T
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"

int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalNumber("DAN_JUHANI_PLOT") == 2) && (GetGlobalBoolean("DAN_VROOKJ_DONE") == FALSE));
    if (iResult)
        SetGlobalBoolean("DAN_VROOKJ_DONE", TRUE);

    return iResult;
}

