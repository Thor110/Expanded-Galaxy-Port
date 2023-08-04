//:: k_swg_bastevil
/*
     Bastila is evil and leaves PC party on StarForge
*/
//:: Created By: Drew Karpyshyn
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"
int StartingConditional()
{
    int iResult;

    iResult = GetGlobalBoolean("G_Sta_Bastila_Leave")==TRUE;
    return iResult;
}

