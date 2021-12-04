//:: k_swg_hk4706
/*
    Adjust the difficulty for HK-47's DC roll
*/
//:: Created By: David Gaider
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

void main()
{
    int nDC = GetGlobalNumber("K_SWG_HK47_DC");
    SetGlobalNumber("K_SWG_HK47_DC", (nDC + 3));
}
