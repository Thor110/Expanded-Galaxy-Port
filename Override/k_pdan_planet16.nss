//:: k_pdan_planet16
/*
    Checks to see if DAN_VANDARR_DONE is TRUE (meaning
    that Vandar has told the player to search the ruins)
    and DAN_STARMAP_DONE is FALSE (meaning that the player
    has not yet found the Star Map).
*/
//:: Created By: Peter T
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"

int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalBoolean("DAN_VANDARR_DONE") == TRUE) && (GetGlobalBoolean("DAN_STARMAP_DONE") == FALSE));

    return iResult;
}

