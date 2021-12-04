//:: k_act_bastadd
/*
    adds bastila to the party
*/
//:: Created By:  Jason Booth
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

void main()
{
  AddPartyMember(GetObjectByTag("bastila"));
}
