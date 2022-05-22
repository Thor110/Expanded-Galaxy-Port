//:: k_pdan_jedi07
/*
    Checks to see if DAN_JEDI_PLOT is 7 (meaning the
    player has become a Padawan) and DAN_CRATISJ_DONE is
    FALSE (meaning Crattis has not yet congratulated the
    player on becoming a Padawan). This conversation will
    not repeat since DAN_CRATISJ_DONE is set to TRUE to
    show that this conversation has taken place.
*/
//:: Created By: Peter T
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"

int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalNumber("DAN_JEDI_PLOT") == 7) && (GetGlobalBoolean("DAN_CRATISJ_DONE") == FALSE));
    if (iResult)
        SetGlobalBoolean("DAN_CRATISJ_DONE", TRUE);

    return iResult;
}

