//:: k_ebn12_gotaris
/*
     Checks if the current planet
     is Taris.
*/
//:: Created By:
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"


int StartingConditional()
{
    if(GetGlobalNumber("K_CURRENT_PLANET") == 10)
    {
        return TRUE;
    }
    return FALSE;
}
