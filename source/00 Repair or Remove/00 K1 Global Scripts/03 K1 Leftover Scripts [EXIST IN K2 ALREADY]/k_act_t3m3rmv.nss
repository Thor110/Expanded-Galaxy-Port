//:: k_act_t3m3rmv
/*
    remvoe t3-m3 from the party
*/
//:: Created By:  Jason Booth
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

void main()
{
  RemovePartyMember(GetObjectByTag("t3-m3"));
}
