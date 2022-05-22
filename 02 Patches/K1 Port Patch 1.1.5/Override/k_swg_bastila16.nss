//:: k_swg_bastila16
/*
    If Bastila and her Mother made up
    and this has not been discussed
*/
//:: Created By: David Gaider
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

int StartingConditional()
{
    int nPlot1 = GetGlobalNumber("K_SWG_HELENA");
    int nPlot2 = GetGlobalBoolean("K_SWG_HELENA_TALK");
    if ((nPlot1 == 4) && (nPlot2 == FALSE))
    {
        return TRUE;
    }
    return FALSE;
}
