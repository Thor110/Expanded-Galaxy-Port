//:: k_hbanter2
/*
     Checks conditions for banter 2 (Carth and Bastila)
*/
//:: Created By:
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"
int StartingConditional()
{
    int iResult;

    iResult = GetGlobalBoolean("G_Banter2")==FALSE &&
    IsNPCPartyMember(NPC_CARTH)==TRUE &&
    IsNPCPartyMember(NPC_BASTILA)==TRUE;
    return iResult;
}
