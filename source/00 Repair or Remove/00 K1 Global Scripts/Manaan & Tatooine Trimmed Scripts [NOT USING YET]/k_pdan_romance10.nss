//:: k_pdan_romance10
/*
    Checks to see if DAN_ROMANCE_PLOT is 3 (meaning that
    the player has returned Shen to his father) and
    DAN_KARAL_DONE is FALSE (meaning that Karal has not
    yet talked to the player about the romance results).
    This conversation will not repeat since DAN_KARAL_DONE
    is set to TRUE to show that this conversation has
    taken place.
*/
//:: Created By: Peter T
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"

int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalNumber("DAN_ROMANCE_PLOT") == 3) && (GetGlobalBoolean("DAN_KARAL_DONE") == FALSE));
    if (iResult)
        SetGlobalBoolean("DAN_KARAL_DONE", TRUE);

    return iResult;
}

