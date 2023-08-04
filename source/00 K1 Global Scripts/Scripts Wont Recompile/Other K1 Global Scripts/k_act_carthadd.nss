//:: k_act_carthadd
/*
    adds carth to the party
*/
//:: Created By:  Jason Booth
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

void main()
{
  AddAvailableNPCByObject(NPC_CARTH,GetObjectByTag("carth"));
  AddPartyMember(NPC_CARTH,GetObjectByTag("carth"));
}
