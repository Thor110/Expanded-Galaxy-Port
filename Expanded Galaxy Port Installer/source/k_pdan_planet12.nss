//:: k_pdan_planet12
/*
    Checks to see if DAN_VANDARR_DONE is FALSE (meaning
    the player has not yet talked to Vandar about the
    Star Map found in the ruins) and DAN_STARMAP_DONE is
    TRUE (meaning the player has actually found the Star
    Map). This conversation will not repeat since
    DAN_VANDARR_DONE is set to TRUE to show that this
    conversation has taken place.
*/
//:: Created By: Peter T
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"

int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalBoolean("DAN_VANDARR_DONE") == FALSE) && (GetGlobalBoolean("DAN_STARMAP_DONE") == TRUE));
    if (iResult)
        SetGlobalBoolean("DAN_VANDARR_DONE", TRUE);

    return iResult;
}

