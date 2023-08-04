//:: k_act_zaaladd
/*
    adds zaalbar to the party
*/
//:: Created By:  Jason Booth
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

void main()
{
  AddAvailableNPCByObject(NPC_ZAALBAR,GetObjectByTag("zaalbar"));
  AddPartyMember(NPC_ZAALBAR,GetObjectByTag("zaalbar"));
}
