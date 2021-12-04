//:: k_pdan_romance08
/*
    Checks to see if DAN_ROMANCE_PLOT is 4 (meaning that
    Shen and Rahasia have run away to the Jedi Enclave)
    and DAN_CRATISS_DONE is FALSE (meaning Crattis has
    not mentioned the romance results before). This
    conversation will not repeat since DAN_CRATISS_DONE
    is set to TRUE to show that this conversation has
    taken place.
*/
//:: Created By: Peter T
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"

int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalBoolean("DAN_CRATISS_DONE") == FALSE) && (GetGlobalNumber("DAN_ROMANCE_PLOT") == 4));
    if (iResult)
        SetGlobalBoolean("DAN_CRATISS_DONE", TRUE);

    return iResult;
}

