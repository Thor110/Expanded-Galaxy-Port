//:: k_pdan_jedi28
/*
    Checks to see if DAN_ZAALBAR_ZONE is 1 (meaning that
    the player has entered the kinrath cave) and
    DAN_ZAALK_DONE is FALSE (meaning that Zaalbar has not
    yet smelled the kinrath). This conversation will not
    repeat since DAN_ZAALK_DONE is set to TRUE to show
    that this conversation has taken place.
*/
//:: Created By: Peter T
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"

int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalNumber("DAN_ZAALBAR_ZONE") == 1) && (GetGlobalBoolean("DAN_ZAALK_DONE") == FALSE));
    if (iResult)
        SetGlobalBoolean("DAN_ZAALK_DONE", TRUE);

    return iResult;
}

