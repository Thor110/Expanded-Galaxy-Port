//:: k_pdan_romance12
/*
    Checks to see if DAN_ROMANCE_PLOT is less than 3
    (meaning it has not been completed) and that
    DAN_AHLAN_DONE is FALSE (meaning that Ahlan Matale
    has not yet told the player to find his son).
*/
//:: Created By: Peter T
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"

int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalNumber("DAN_ROMANCE_PLOT") < 3) && (GetGlobalBoolean("DAN_AHLAN_DONE") == FALSE));

    return iResult;
}

