//:: k_hzal_Talk0
/*
    Checks if ZaalbarTalk is at 0
*/
//:: Created By:  Lukas Kristjanson
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"


int StartingConditional()
{
    int iResult;

    iResult = GetGlobalNumber("ZaalbarTalk")==0;
    return iResult;
}

