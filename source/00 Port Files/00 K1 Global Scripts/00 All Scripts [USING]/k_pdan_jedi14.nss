//:: k_pdan_jedi14
/*
    Checks to see if DAN_JEDI_PLOT is 6 (meaning that
    the player has shown basic proficiency with the
    lightsaber) and DAN_ZHARH_DONE is FALSE (meaning that
    Zhar has not yet talked to the player about further
    testing).
*/
//:: Created By: Peter T
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"

int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalNumber("DAN_JEDI_PLOT") == 6) && (GetGlobalBoolean("DAN_ZHARH_DONE") == FALSE));

    return iResult;
}

