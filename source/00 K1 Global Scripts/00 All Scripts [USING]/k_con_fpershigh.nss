//:: k_con_fpershigh
/*
    checks to see if character has dominate mind
*/
//:: Created By:  Jason Booth
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

int StartingConditional()
{
  return GetHasSpell(FORCE_POWER_DOMINATE,GetPCSpeaker());
}
