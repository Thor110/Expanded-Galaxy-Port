//:: qa_setanim
/*
     Sets the appearance type of the creature
*/
//:: Created By: Preston Watamaniuk
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

void main()
{
    int nX = GetRunScriptVar();
    effect eDisguise = EffectDisguise(nX);
    ClearAllEffects();
    ApplyEffectToObject(DURATION_TYPE_PERMANENT, eDisguise, GetFirstPC());
}
