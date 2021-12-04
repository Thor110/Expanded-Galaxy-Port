//:: k_con_JoleeJoin
/*
    Checks if Jolee has joined party
*/
//:: Created By:  Drew K
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"


int StartingConditional()
{
    int iResult;

    iResult = GetGlobalBoolean("G_JoleeJoined")==TRUE;
    return iResult;
}
