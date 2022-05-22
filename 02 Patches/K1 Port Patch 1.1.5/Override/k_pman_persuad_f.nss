//:: k_pman_persuad_f
/*
     Returns FALSE if the player has already
     persuaded the race organizer on Manaan.
     Also checks if player has Force Persuade
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

    else if (GetHasSpell(FORCE_POWER_AFFECT_MIND, GetPCSpeaker()) ||
        GetHasSpell(FORCE_POWER_DOMINATE, GetPCSpeaker()))
    {
        return TRUE;
    }

    else
    {
        return FALSE;
    }
}


