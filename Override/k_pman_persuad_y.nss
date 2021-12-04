//:: k_ptat_racechamp
/*
     Returns FALSE if the player has already
     persuaded the race organizer on Manaan.
*/
//:: Created By: Lukas Kristjanson
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_man"

int StartingConditional()
{
    if (GetPlayerPersuadedOnceLocal() == TRUE)
    {
        return FALSE;
    }
    else
    {
        return TRUE;
    }
}

