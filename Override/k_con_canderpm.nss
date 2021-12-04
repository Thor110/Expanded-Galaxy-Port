//:: k_con_canderpm
/*
    checks to see if canderous is a party member
*/
//:: Created By:
//:: Copyright (c) 2002 Bioware Corp.
//:: modified by Aidan, Sept 28,02
//:: updated with the new party functions
#include "k_inc_debug"

int StartingConditional()
{
  return ((IsNPCPartyMember(1) == TRUE) && (GetDistanceBetween(GetPCSpeaker(), GetObjectByTag("cand")) <= 10.0));
}
