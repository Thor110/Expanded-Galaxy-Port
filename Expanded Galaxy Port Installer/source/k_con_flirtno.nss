//:: k_con_flirtno
/*
    checks if pc charisma is low or pc and npc are same sex
*/
//:: Created By:  Jason Booth
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

int StartingConditional()
{
    if((GetGender(GetPCSpeaker()) == GetGender(OBJECT_SELF)) ||
      GetAbilityScore(GetPCSpeaker(),ABILITY_CHARISMA) < 10)
    {
        return TRUE;
    }
    return FALSE;
}

