//:: k_con_bastilapm
/*
    checks to see if bastila is a party member
*/
//:: Created By:
//:: Copyright (c) 2002 Bioware Corp.
//:: modified by Aidan, Sept 28,02
//:: updated with the new party functions
#include "k_inc_debug"

int StartingConditional()
{
  return ((IsNPCPartyMember(0) == TRUE) && (GetDistanceBetween(GetPCSpeaker(), GetObjectByTag("bastila")) <= 10.0));
}
