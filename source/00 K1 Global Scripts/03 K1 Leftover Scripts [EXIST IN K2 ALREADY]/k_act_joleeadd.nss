//:: k_act_joleeadd
/*
    adds jolee to the party
*/
//:: Created By:  Jason Booth
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

void main()
{
  AddAvailableNPCByObject(NPC_JOLEE,GetObjectByTag("jolee"));
  AddPartyMember(NPC_JOLEE,GetObjectByTag("jolee"));
}
