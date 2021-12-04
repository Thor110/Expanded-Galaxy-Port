//:: k_hbanter1
/*
     Checks conditions for banter 1(Carth and Bastila)
*/
//:: Created By:
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"
int StartingConditional()
{
    int iResult;

    iResult = GetGlobalBoolean("G_Banter1")==FALSE &&
    IsNPCPartyMember(NPC_CARTH)==TRUE &&
    IsNPCPartyMember(NPC_BASTILA)==TRUE;
    return iResult;
}
