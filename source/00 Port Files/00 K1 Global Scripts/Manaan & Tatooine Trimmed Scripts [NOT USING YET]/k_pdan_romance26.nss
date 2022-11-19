//:: k_pdan_romance26
/*
    Checks to see if DAN_AHLAN_DONE is FALSE. This
    determines that the player has not talked to Ahlan
    Matale in his home before. This conversation will not
    repeat because DAN_AHLAN_DONE will be set to TRUE to
    show that this conversation has already taken place.
*/
//:: Created By: Peter T
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"

int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalBoolean("DAN_AHLAN_DONE") == FALSE);
    if (iResult)
        SetGlobalBoolean("DAN_AHLAN_DONE", TRUE);

    return iResult;
}
