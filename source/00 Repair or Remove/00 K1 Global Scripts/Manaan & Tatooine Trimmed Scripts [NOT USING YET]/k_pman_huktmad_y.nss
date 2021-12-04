//:: k_pman_huktmad_y
/*
   Checks that Hukta mad at player, player has
   won the Championship from him
*/
//:: Created By: Lukas Kristjanson
//:: Copyright © 2002 Bioware Corp.
#include "k_inc_man"

int StartingConditional()
    {
    if (GetHuktaMadGlobal() == TRUE)
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}

