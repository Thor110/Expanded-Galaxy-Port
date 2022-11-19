//:: k_act_bastrmv
/*
    remvoe bastila from the party
*/
//:: Created By:  Jason Booth
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

void main()
{
  RemovePartyMember(GetObjectByTag("bastila"));
}
