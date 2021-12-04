//:: k_hbanter1
/*
     Checks conditions for banter 6 (Canderous and Bastila)
*/
//:: Created By:
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"
int StartingConditional()
{
    int iResult;

    iResult = GetGlobalBoolean("G_Banter6")==FALSE &&
    IsNPCPartyMember(NPC_CANDEROUS)==TRUE &&
    IsNPCPartyMember(NPC_BASTILA)==TRUE;
    return iResult;
}
