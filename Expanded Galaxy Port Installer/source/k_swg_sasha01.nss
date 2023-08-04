//:: k_swg_sasha01
/*
    If the Sasha plot is active
*/
//:: Created By: David Gaider
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

int StartingConditional()
{
    int nPlot1 = GetGlobalNumber("EBO_SASHA_PLOT");
    int nPlot2 = GetGlobalNumber("Ebo_Sasha_State");
    if ((nPlot1 > 1) && (nPlot2 != 99))
    {
        return TRUE;
    }
    return FALSE;
}
