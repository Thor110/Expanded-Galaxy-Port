//:: k_act_candstim03
/*
     Canderous gives out a stamina
     stimulant
*/
//:: Created By: Preston Watamaniuk
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"


void main()
{
    object oProxy = CreateItemOnObject("G_I_ADRNALINE003", GetFirstPC());
    int nCount = GetGlobalNumber("K_CAND_ITEMS");
    nCount++;
    SetGlobalNumber("K_CAND_ITEMS", nCount);
}
