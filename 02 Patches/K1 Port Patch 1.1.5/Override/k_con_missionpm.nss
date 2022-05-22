//:: k_con_missionpm
/*
    checks to see if mission is a party member
*/
//:: Created By:
//:: Copyright (c) 2002 Bioware Corp.
//:: modified by Aidan, Sept 28,02
//:: updated with the new party functions
#include "k_inc_debug"

int StartingConditional()
{
  return ((IsNPCPartyMember(6) == TRUE) && (GetDistanceBetween(GetPCSpeaker(), GetObjectByTag("mission")) <= 10.0));
}
