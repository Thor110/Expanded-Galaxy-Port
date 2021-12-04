//:: k_hbanter4
/*
     Checks conditions for banter 4 (Carth and Mission)
*/
//:: Created By:
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"
int StartingConditional()
{
    int iResult;

    iResult = GetGlobalBoolean("G_Banter4")==FALSE &&
    IsNPCPartyMember(NPC_CARTH)==TRUE &&
    IsNPCPartyMember(NPC_MISSION)==TRUE;
    return iResult;
}
