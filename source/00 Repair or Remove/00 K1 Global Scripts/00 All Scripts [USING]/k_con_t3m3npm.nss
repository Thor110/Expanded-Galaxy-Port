//:: k_con_t3m3npm
/*
    checks to see if t3-m3 is not a party member
*/
//:: Created By:  Jason Booth
//:: Copyright (c) 2002 Bioware Corp.
//:: modified by Aidan, Sept 28,02
//:: updated with the new party functions
#include "k_inc_debug"

int StartingConditional()
{
  return !IsNPCPartyMember(7);
}
