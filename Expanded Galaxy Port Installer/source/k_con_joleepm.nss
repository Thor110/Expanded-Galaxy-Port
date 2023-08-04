//:: k_con_joleepm
/*
    checks to see if jolee is a party member
*/
//:: Created By:  Jason Booth
//:: Copyright (c) 2002 Bioware Corp.
//:: modified by Aidan, Sept 28,02
//:: updated with the new party functions
#include "k_inc_debug"

int StartingConditional()
{
  return ((IsNPCPartyMember(4) == TRUE) && (GetDistanceBetween(GetPCSpeaker(), GetObjectByTag("jolee")) <= 10.0));
}
