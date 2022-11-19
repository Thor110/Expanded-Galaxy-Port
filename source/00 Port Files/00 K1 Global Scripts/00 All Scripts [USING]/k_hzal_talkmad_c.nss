//:: k_hzal_Talkmad_c
/*
    Checks if ZaalbarTalkMad is TRUE
*/
//:: Created By:  Lukas Kristjanson
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"


int StartingConditional()
{
    int iResult;

    iResult = GetGlobalBoolean("ZaalbarTalkMad")==TRUE;
    return iResult;
}


