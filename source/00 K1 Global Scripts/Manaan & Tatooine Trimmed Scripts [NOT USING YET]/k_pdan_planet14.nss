//:: k_pdan_planet14
/*
    Checks to see if DAN_JEDI_PLOT is 7 (meaning that the
    player is a Padawan) and DAN_VROOKR_DONE is FALSE
    (meaning that Vrook has not yet told the player to
    investigate the ruins). This conversation will not
    repeat since DAN_VROOKR_DONE is set to TRUE to sho
    that this conversation has taken place.
*/
//:: Created By: Peter T
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"

int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalNumber("DAN_JEDI_PLOT") == 7) && (GetGlobalBoolean("DAN_VROOKR_DONE") == FALSE));
    if (iResult)
        SetGlobalBoolean("DAN_VROOKR_DONE", TRUE);

    return iResult;
}

