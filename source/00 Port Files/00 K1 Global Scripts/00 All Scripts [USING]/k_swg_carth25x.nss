//:: k_swg_carth25
/*
    After the final Star Map has been found, Romance not active
*/
//:: Created By: David Gaider
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

int StartingConditional()
{
    if (GetGlobalBoolean("Lev_MalDream")== TRUE &&
        GetGlobalBoolean("G_Carth_RevTalk")==FALSE &&
        GetGlobalNumber("K_SWG_CARTH")!=14)
    {
        return TRUE;
    }
    return FALSE;
}

