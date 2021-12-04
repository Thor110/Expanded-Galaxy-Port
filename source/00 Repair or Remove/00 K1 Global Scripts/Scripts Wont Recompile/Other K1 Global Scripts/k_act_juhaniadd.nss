//:: k_act_juhaniadd
/*
    adds juhani to the party
*/
//:: Created By:  Jason Booth
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

void main()
{
  AddAvailableNPCByObject(NPC_JUHANI,GetObjectByTag("juhani"));
  AddPartyMember(NPC_JUHANI,GetObjectByTag("juhani"));
}
