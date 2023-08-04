//:: k_ptat_queenotpc
/*
     The player has not won all of the races on Manaan.
     Queedle champion
*/
//:: Created By: Lukas Kristjanson
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_man"

int StartingConditional()
{
    if ((GetManaanRaceStateGlobal() < 3) &&
        (GetQueedleStateGlobal() == 2))
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}


