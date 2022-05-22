//:: k_act_candstim02
/*
     Canderous gives out a strength
     stimulant
*/
//:: Created By: Preston Watamaniuk
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"


void main()
{
    object oProxy = CreateItemOnObject("G_I_ADRNALINE001", GetFirstPC());
    int nCount = GetGlobalNumber("K_CAND_ITEMS");
    nCount++;
    SetGlobalNumber("K_CAND_ITEMS", nCount);
}
