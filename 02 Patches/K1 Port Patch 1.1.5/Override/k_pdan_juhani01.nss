//:: k_pdan_juhani01
/*
    Checks to see if DAN_BELAYAJ_DONE is FALSE (meaning
    she has not mentioned Juhani before) and that
    DAN_JUHANI_PLOT is 3 (meaning that Juhani has been
    saved). This conversation will not repeat as
    DAN_BELAYAJ_DONE is set to TRUE.
*/
//:: Created By: Peter T
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"

int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalBoolean("DAN_BELAYAJ_DONE") == FALSE) && (GetGlobalNumber("DAN_JUHANI_PLOT") == 3));
    if (iResult)
        SetGlobalBoolean("DAN_BELAYAJ_DONE", TRUE);

    return iResult;
}

