//:: k_act_missionmv
/*
    remvoe mission from the party
*/
//:: Created By:  Jason Booth
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

void main()
{
  RemovePartyMember(GetObjectByTag("mission"));
}
