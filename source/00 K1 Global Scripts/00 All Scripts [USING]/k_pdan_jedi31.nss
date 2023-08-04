//:: k_pdan_jedi31
/*
    Checks to see if DAN_JEDI_PLOT is 6 (meaning that
    the player has shown basic proficiency with the
    lightsaber) and DAN_ZHARD_DONE is TRUE (meaning that
    the player has been defeated by Zhar).
*/
//:: Created By: Peter T
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"

int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalNumber("DAN_JEDI_PLOT") == 6) && (GetGlobalBoolean("DAN_ZHARD_DONE") == TRUE));

    return iResult;
}

