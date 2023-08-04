//:: k_pdan_jedi13
/*
    Checks to see if DAN_JEDI_PLOT is 4, meaning that the
    player has cleansed the grove.
*/
//:: Created By: Peter T
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"

int StartingConditional()
{
    int iResult;
    object t;

    t = GetItemPossessedBy(GetPCSpeaker(), "dan14_crystal");

    iResult = ((GetGlobalNumber("DAN_JEDI_PLOT") == 4) && (GetIsObjectValid(t) == FALSE));

    return iResult;
}

