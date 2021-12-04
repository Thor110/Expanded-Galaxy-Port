//:: k_act_missionadd
/*
    adds mission to the party
*/
//:: Created By:  Jason Booth
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

void main()
{
  AddAvailableNPCByObject(NPC_MISSION,GetObjectByTag("mission"));
  AddPartyMember(NPC_MISSION,GetObjectByTag("mission"));
}
