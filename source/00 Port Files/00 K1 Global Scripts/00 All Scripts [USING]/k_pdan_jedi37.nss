//:: k_pdan_jedi37
/*
    Checks to see if DAN_JEDI_PLOT is 4 (meaning that
    the player has cleansed the grove but has not yet
    constructed their lightsaber) and DAN_ZHARL_DONE is
    TRUE (meaning the player has been told to find a
    lightsaber crystal).
*/
//:: Created By: Peter T
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"

int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalNumber("DAN_JEDI_PLOT") == 4) && (GetGlobalBoolean("DAN_ZHARL_DONE") == TRUE));;

    return iResult;
}

