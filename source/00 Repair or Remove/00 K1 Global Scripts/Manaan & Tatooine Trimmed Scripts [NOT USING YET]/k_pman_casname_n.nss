//:: k_pman_casname_n
/*
     Casandra has not yet reveiled his name to the player.
*/
//:: Created By: Lukas Kristjanson
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_man"

int StartingConditional()
{
    if (GetToldCasandraNameLocal() == TRUE)
    {
        return FALSE;
    }
    else
    {
        return TRUE;
    }
}

