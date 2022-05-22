//:: k_act_hk47add
/*
    adds hk-47 to the party
*/
//:: Created By:  Jason Booth
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

void main()
{
  AddAvailableNPCByObject(NPC_HK_47,GetObjectByTag("hk47"));
  AddPartyMember(NPC_HK_47,GetObjectByTag("hk47"));
}
