//:: k_swg_bastila27
/*
    If the PC is on Dantooine and
    the cave dream has been had
*/
//:: Created By: David Gaider
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

int StartingConditional()
{
    int nPlanet = GetGlobalNumber("K_CURRENT_PLANET");
    int nDream = GetGlobalNumber("Dan_Jedi_Plot");
    int nVision = GetGlobalNumber("Ebon_Vision");
    if ((nPlanet == 15) && (nDream >=1)&& (nVision==0) &&
        GetGlobalBoolean("k_Bast_DreamTalk")==FALSE)
    {
        return TRUE;
    }
    return FALSE;
}
