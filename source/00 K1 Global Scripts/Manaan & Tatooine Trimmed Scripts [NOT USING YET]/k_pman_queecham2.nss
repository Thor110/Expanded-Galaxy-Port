//:: k_pman_queecham2
/*
     Queedle is currently champion
*/
//:: Created By: Lukas Kristjanson
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_man"

int StartingConditional()
{
    if (GetQueedleStateGlobal() == 2)
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}



