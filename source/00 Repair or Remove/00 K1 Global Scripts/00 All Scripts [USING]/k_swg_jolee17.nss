//:: k_swg_jolee17
/*
    If Sunry was found guilty
*/
//:: Created By: David Gaider
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

int StartingConditional()
{
    int iResult;

    iResult = GetGlobalNumber("MAN_MURDER_PLOT") == 4;
    return iResult;
}
