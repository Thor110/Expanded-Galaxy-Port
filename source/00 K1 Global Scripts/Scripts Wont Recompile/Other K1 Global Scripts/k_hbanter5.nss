//:: k_hbanter5
/*
     Checks conditions for banter 5 (Carth and Canderous)
*/
//:: Created By:
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"
int StartingConditional()
{
    int iResult;

    iResult = GetGlobalBoolean("G_Banter5")==FALSE &&
    IsNPCPartyMember(NPC_CARTH)==TRUE &&
    IsNPCPartyMember(NPC_CANDEROUS)==TRUE;
    return iResult;
}
