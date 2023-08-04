//:: k_act_t3m3add
/*
    adds t3-m3 to the party
*/
//:: Created By:  Jason Booth
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

void main()
{
  AddAvailableNPCByObject(NPC_T3_M4,GetObjectByTag("t3m4"));
  AddPartyMember(NPC_T3_M4,GetObjectByTag("t3m4"));
}
