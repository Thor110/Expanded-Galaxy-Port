//:: k_swg_hk4712
/*
    If HK-47 has been returned to Revan
*/
//:: Created By: David Gaider
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"
#include "k_inc_utility"

int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalBoolean("K_SWG_HK47_KNOW") == TRUE) &&
              (UT_GetPlotBooleanFlag(OBJECT_SELF, 3) == FALSE));
    return iResult;
}
