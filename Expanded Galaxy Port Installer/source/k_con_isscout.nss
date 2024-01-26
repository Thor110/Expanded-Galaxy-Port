//:: k_con_isscout
/*
    checks to see if pc is a scout
*/
//:: Created By:  Jason Booth
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

int StartingConditional()
{
  object oPC = GetFirstPC();
    if(GetLevelByClass(5,oPC))
    {
      return TRUE;
    }
    else
    {
      return FALSE;
    }
}
