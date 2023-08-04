//:: k_pdan_jedi032
/*
    Checks to see if DAN_JEDI_PLOT is 7 (meaning the
    player has become a Padawan) and that DAN_BELAYAT_DONE
    is FALSE (meaning that Belaya has not yet
    congratulated the player on becoming a Padawan). This
    conversation will not repeat as DAN_BELAYAT_DONE is
    set to TRUE to show that this conversation has taken
    place.
*/
//:: Created By: Peter T
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"

int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalBoolean("DAN_BELAYAT_DONE") == FALSE) && (GetGlobalNumber("DAN_JEDI_PLOT") == 7));
    if (iResult)
        SetGlobalBoolean("DAN_BELAYAT_DONE", TRUE);

    return iResult;
}

