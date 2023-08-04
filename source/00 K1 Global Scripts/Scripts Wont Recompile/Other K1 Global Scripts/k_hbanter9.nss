//:: k_hbanter9
/*
     Checks conditions for banter 9(Mission and Bastila)
*/
//:: Created By:
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"
int StartingConditional()
{
    int iResult;

    iResult = GetGlobalBoolean("G_Banter9")==FALSE &&
    IsNPCPartyMember(NPC_MISSION)==TRUE &&
    IsNPCPartyMember(NPC_BASTILA)==TRUE;
    return iResult;
}
