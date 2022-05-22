//:: k_act_candstim01
/*
     Canderous gives out a speed
     stimulant
*/
//:: Created By: Preston Watamaniuk
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"


void main()
{
    object oProxy = CreateItemOnObject("G_I_ADRNALINE002", GetFirstPC());
    int nCount = GetGlobalNumber("K_CAND_ITEMS");
    nCount++;
    SetGlobalNumber("K_CAND_ITEMS", nCount);
}
