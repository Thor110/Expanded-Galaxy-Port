//:: k_con_flirt
/*
    checks to see if npc and pc are of the opposite sex and the pc's
    charisma is normal or better
*/
//:: Created By:  Jason Booth
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

int StartingConditional()
{
    int nGender = GetGender(GetPCSpeaker());
    if(GetAbilityScore(GetPCSpeaker(),ABILITY_CHARISMA) >= 10)
    {
        if(nGender != GetGender(OBJECT_SELF))
        {
           return TRUE;
        }
        else
        {
           return FALSE;
        }
    }
    return FALSE;
}
