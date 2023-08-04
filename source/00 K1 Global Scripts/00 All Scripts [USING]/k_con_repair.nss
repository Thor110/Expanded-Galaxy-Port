//:: k_con_repair
/*
    checks to see if pc is neutral
*/
//:: Created By:  Jason Booth
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"
#include "k_inc_utility"

int StartingConditional()
{
    int nSkill = GetSkillRank(SKILL_REPAIR, GetPCSpeaker());
    if(nSkill > 0)
    {
        return TRUE;
    }
    return FALSE;
}
