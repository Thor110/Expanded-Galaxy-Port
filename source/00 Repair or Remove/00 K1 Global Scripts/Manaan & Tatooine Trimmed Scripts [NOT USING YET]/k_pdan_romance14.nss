//:: k_pdan_romance14
/*
    Checks to see if DAN_ROMANCE_PLOT is greater than 3,
    meaning that either Shen and Rahasia have run away to
    the Jedi Enclave, or Nurik has accepted them.
*/
//:: Created By: Peter T
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"

int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalNumber("DAN_ROMANCE_PLOT") > 3);

    return iResult;
}

