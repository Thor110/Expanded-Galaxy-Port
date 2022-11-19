//:: k_pdan_jedi08
/*
    Checks to see if DAN_JEDI_PLOT is 4 (meaning that the
    player has successfully cleansed the grove) and
    DAN_CRATISL_DONE is FALSE (meaning that Crattis has
    not yet offered to buy lightsaber crystals off the
    player). This conversation will not repeat since
    DAN_CRATISL_DONE is set to TRUE to show that this
    conversation has taken place.
*/
//:: Created By: Peter T
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"

int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalNumber("DAN_JEDI_PLOT") == 4) && (GetGlobalBoolean("DAN_CRATISL_DONE") == FALSE));
    if (iResult)
        SetGlobalBoolean("DAN_CRATISL_DONE", TRUE);

    return iResult;
}

