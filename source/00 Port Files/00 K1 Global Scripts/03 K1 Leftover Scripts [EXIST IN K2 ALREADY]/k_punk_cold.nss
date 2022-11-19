//:: k_punk_cold
/*
    apply cold serum effect
*/
//:: Created By: Jason Booth
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

void main()
{
  int i;
  object obj;
  
  for(i = 0;i < GetPartyMemberCount();i++)
  {
    obj = GetPartyMemberByIndex(i);
    ApplyEffectToObject(DURATION_TYPE_TEMPORARY,EffectDamageImmunityIncrease(DAMAGE_TYPE_COLD,100),obj,60.0);
  }
}
