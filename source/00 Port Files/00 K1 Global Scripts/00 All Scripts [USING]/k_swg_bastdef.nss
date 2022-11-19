//:: k_swg_bastila14
/*
    If Malare/Helena plot not active
*/
//:: Created By: David Gaider
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalNumber("K_SWG_HELENA") !=2) && (GetGlobalNumber("K_SWG_HELENA")!=3);
    return iResult;
}

