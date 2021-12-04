//:: k_con_JuhaniLive
/*
    Checks if Juhani is alive
*/
//:: Created By:  Drew K
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"


int StartingConditional()
{
    int iResult;

    iResult = GetGlobalNumber("Dan_Juhani_Plot")!=2;
    return iResult;
}

