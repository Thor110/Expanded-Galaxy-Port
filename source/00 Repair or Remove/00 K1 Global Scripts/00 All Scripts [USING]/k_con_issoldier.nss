//:: k_con_issoldier
/*
    checks to see if pc is a soldier
*/
//:: Created By:  Jason Booth
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

int StartingConditional()
{
  object oPC = GetFirstPC();
    if(GetLevelByClass(3,oPC))
    {
      return TRUE;
    }
    else
    {
      return FALSE;
    }
}
