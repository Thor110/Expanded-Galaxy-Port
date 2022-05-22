//:: k_swg_carth13
/*
    if the romance is over or the PC is male
*/
//:: Created By: David Gaider
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

int StartingConditional()
{
    int nGender = GetGender(GetPCSpeaker());
    int nPlot = GetGlobalNumber("K_SWG_CARTH");
    if ((nGender == GENDER_MALE) || (nPlot == 99))
    {
        return TRUE;
    }
    return FALSE;
}
