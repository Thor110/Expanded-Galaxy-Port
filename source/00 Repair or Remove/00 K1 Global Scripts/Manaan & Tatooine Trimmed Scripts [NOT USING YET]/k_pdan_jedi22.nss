//:: k_pdan_jedi22
/*
    Checks to see if DAN_JEDI_PLOT is less than 2 (meaning
    the player has not yet been accepted for Jedi
    training) and DAN_CRATISI_DONE is FALSE (meaning that
    the player has not spoken to Crattis before). This
    conversation will not repeat since DAN_CRATISI_DONE is
    set to TRUE to show that this conversation has taken
    place.
*/
//:: Created By: Peter T
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"

int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalNumber("DAN_JEDI_PLOT") < 2) && (GetGlobalBoolean("DAN_CRATISI_DONE") == FALSE));
    if (iResult)
        SetGlobalBoolean("DAN_CRATISI_DONE", TRUE);

    return iResult;
}

