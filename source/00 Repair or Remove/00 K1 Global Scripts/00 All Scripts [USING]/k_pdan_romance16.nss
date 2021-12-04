//:: k_pdan_romance16
/*
    Checks if DAN_ROMANCE_PLOT is less than 2 (meaning
    that the player has not yet spoken to Rahasia) and
    that DAN_HATE_DONE is FALSE (meaning that Rahasia
    does not hate the player). This conversation will not
    repeat, since either DAN_ROMANCE_PLOT will be set to
    2, or DAN_HATE_DONE will be set to TRUE.
*/
//:: Created By: Peter T
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"

int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalNumber("DAN_ROMANCE_PLOT") < 2) && (GetGlobalBoolean("DAN_HATE_DONE") == FALSE));

    return iResult;
}

