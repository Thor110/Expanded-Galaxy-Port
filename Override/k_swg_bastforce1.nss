//:: k_swg_bastforce1
/*
    Checks if Bastila forced dialog 1 has to fire
*/
//:: Created By:  Drew K
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"


int StartingConditional()
{
    int iResult;

    iResult = GetGlobalNumber("Ebn_Bast_ForceTalk")==1;

    return iResult;
}
