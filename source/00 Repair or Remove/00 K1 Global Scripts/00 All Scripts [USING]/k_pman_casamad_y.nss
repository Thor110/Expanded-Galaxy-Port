//:: k_pman_casamad_y
/*
   Checks that Casandra mad at plyer
*/
//:: Created By: Lukas Kristjanson
//:: Copyright � 2002 Bioware Corp.
#include "k_inc_man"

int StartingConditional()
    {
    if (GetCasandraMadLocal() == TRUE)
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}
