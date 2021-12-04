//:: k_con_npctalk
/*
    Checks if one of the NPC talk triggers has just fired
*/
//:: Created By: Drew Karpyshyn
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"


int StartingConditional()
{
    int iResult;

    iResult = GetGlobalBoolean("G_NPC_talk")==TRUE;
    return iResult;
}
