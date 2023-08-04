//:: k_hjuh_d01
/*
    After meeting Dak Vesser
*/
//:: Created By: David Gaider
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

int StartingConditional()
{
    int nPlot = GetGlobalNumber("KOR_WHO_DAK");
    if (nPlot == 2)
    {
        return TRUE;
    }
    return FALSE;
}
