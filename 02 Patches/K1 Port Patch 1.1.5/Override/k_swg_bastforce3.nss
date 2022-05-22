//:: k_swg_bastforce3
/*
    Checks if Bastila forced dialog 2 has to fire
*/
//:: Created By:  Drew K
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"


int StartingConditional()
{
    int iResult;

    iResult = GetGlobalNumber("Ebn_Bast_ForceTalk")==3;

    return iResult;
}

