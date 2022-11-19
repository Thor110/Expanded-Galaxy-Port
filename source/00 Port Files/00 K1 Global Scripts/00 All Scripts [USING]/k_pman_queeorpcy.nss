//:: k_pman_queeorpcy
/*
     The player is Champion
     OR
     Queedle is currently champion
*/
//:: Created By: Lukas Kristjanson
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_man"

int StartingConditional()
{
    if ((GetManaanRaceStateGlobal() == 3) ||
        (GetQueedleStateGlobal() == 2))
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}


