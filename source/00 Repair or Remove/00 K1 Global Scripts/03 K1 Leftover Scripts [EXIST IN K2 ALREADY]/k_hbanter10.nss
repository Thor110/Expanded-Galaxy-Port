//:: k_hbanter10
/*
     Checks conditions for banter 10(Jolee and Bastila)
*/
//:: Created By:
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"
int StartingConditional()
{
    int iResult;

    iResult = GetGlobalBoolean("G_Banter10")==FALSE &&
    IsNPCPartyMember(NPC_JOLEE)==TRUE &&
    IsNPCPartyMember(NPC_BASTILA)==TRUE;
    return iResult;
}
