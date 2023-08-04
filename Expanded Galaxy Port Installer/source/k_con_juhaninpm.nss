//:: k_con_juhaninpm
/*
    checks to see if juhani is not a party member
*/
//:: Created By:  Jason Booth
//:: Copyright (c) 2002 Bioware Corp.
//:: modified by Aidan, Sept 28,02
//:: updated with the new party functions
#include "k_inc_debug"

int StartingConditional()
{
  return !IsNPCPartyMember(5);
}
