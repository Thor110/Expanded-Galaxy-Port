//:: k_act_hki47rmv
/*
    remvoe hk-47 from the party
*/
//:: Created By:  Jason Booth
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

void main()
{
  RemovePartyMember(GetObjectByTag("hk-47"));
}
