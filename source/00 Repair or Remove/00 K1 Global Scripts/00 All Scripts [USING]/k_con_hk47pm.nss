//:: k_con_hk47pm
/*
    checks to see if hk-47 is a party member
*/
//:: Created By:
//:: Copyright (c) 2002 Bioware Corp.
//:: modified by Aidan, Sept 28,02
//:: updated with the new party functions
#include "k_inc_debug"

int StartingConditional()
{
  return ((IsNPCPartyMember(3) == TRUE) && (GetDistanceBetween(GetPCSpeaker(), GetObjectByTag("hk47")) <= 10.0));
}
