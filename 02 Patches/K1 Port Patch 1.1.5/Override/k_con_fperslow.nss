//:: k_con_fperslow
/*
    checks to see if character has affect mind
*/
//:: Created By:  Jason Booth
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

int StartingConditional()
{
  if(GetHasSpell(FORCE_POWER_AFFECT_MIND, GetPCSpeaker()) || GetHasSpell(FORCE_POWER_DOMINATE, GetPCSpeaker()))
  {
      return TRUE;
  }
  return  FALSE;
}
