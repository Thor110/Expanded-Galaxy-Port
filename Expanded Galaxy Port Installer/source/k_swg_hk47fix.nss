//:: k_swg_hk47fix
/*
    Checks whether or not the PC passes the Repair check
*/
//:: Created By: Drew Karpyshyn
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"
#include "K_inc_utility"
int StartingConditional()
{
    int nBonus = GetGlobalNumber("K_SWG_HK47_DC");
    int nSkill = GetSkillRank(SKILL_REPAIR, GetFirstPC());


    int nDC = (28 + nBonus);
    int nRoll = 20;

    if ((nRoll + nSkill) >= nDC)
    {
        return TRUE;
    }
    return FALSE;
}
