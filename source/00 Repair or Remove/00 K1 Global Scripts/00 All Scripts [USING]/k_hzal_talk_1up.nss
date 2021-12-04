//:: k_hzal_Talk_1up
/*
    Checks if ZaalbarTalk is greater than 0
*/
//:: Created By:  Lukas Kristjanson
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"


int StartingConditional()
{
    int iResult;

    iResult = GetGlobalNumber("ZaalbarTalk")>=1;
    return iResult;
}

