//:: k_act_carthrmv
/*
    remvoe carth from the party
*/
//:: Created By:  Jason Booth
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

void main()
{
  RemovePartyMember(GetObjectByTag("carth"));
}
