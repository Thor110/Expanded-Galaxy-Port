//:: k_act_canderadd
/*
    adds canderous to the party
*/
//:: Created By:  Jason Booth
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

void main()
{
  AddAvailableNPCByObject(NPC_CANDEROUS,GetObjectByTag("canderous"));
  AddPartyMember(NPC_CANDEROUS,GetObjectByTag("canderous"));
}
