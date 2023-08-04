//:: k_pman_race_s_01
/*
     The player has won at least one race but
     not Champion yet on manaan.
*/
//:: Created By: Lukas Kristjanson
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_man"

int StartingConditional()
{
    if (GetManaanRaceStateGlobal() > 0)
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}






