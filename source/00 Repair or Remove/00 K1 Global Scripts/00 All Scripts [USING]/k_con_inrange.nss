//:: k_con_inrange
/*
    checks to see if npc is in range of pc for dialogue
*/
//:: Created By:  Jason Booth
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

int StartingConditional()
{
  if(GetDistanceToObject(GetPCSpeaker()) < 3.0)
  {
    return TRUE;
  }
  else
  {
    return FALSE;
  }
}
