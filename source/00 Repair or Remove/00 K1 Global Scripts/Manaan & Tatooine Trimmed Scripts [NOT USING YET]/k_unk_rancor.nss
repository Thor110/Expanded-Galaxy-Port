//:: k_unk_rancor
/*
     rancor grendae effect
*/
//:: Created By: Jason Booth
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"
void main()
{
  int nVFX = 3006;
  effect ePoison = EffectDeath();
  object oTarget = GetFirstObjectInShape(SHAPE_SPHERE, 5.0, GetSpellTargetLocation());

  while (GetIsObjectValid(oTarget) == TRUE)
  {
    if (!GetIsNeutral(oTarget) && FindSubString(GetTag(oTarget),"rancor") >= 0)
    {
      ApplyEffectToObject(DURATION_TYPE_PERMANENT, ePoison, oTarget);
    }

    oTarget = GetNextObjectInShape(SHAPE_SPHERE, 5.0, GetSpellTargetLocation());
  }

  ApplyEffectAtLocation(DURATION_TYPE_INSTANT, EffectVisualEffect(nVFX), GetSpellTargetLocation());
}
