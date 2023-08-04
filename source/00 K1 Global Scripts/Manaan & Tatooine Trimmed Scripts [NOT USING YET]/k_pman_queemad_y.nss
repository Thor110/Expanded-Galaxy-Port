//:: k_pman_queemad_y
/*
   Checks that Queedle mad at plyer
*/
//:: Created By: Lukas Kristjanson
//:: Copyright © 2002 Bioware Corp.
#include "k_inc_man"

int StartingConditional()
    {
    if (GetQueedleMadLocal() == TRUE)
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}

