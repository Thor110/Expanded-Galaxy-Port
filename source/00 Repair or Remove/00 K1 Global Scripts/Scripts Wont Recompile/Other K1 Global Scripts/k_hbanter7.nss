//:: k_hbanter7
/*
     Checks conditions for banter 7 (Mission and Zaalbar)
*/
//:: Created By:
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"
int StartingConditional()
{
    int iResult;

    iResult = GetGlobalBoolean("G_Banter7")==FALSE &&
    IsNPCPartyMember(NPC_MISSION)==TRUE &&
    IsNPCPartyMember(NPC_ZAALBAR)==TRUE;
    return iResult;
}
