//:: k_ptat_champ_qui
/*
     The player has won all of the races on Manaan.
     Queedle previously quit (which means Hukta
     threatened player put player won anyway.)
*/
//:: Created By: Lukas Kristjanson
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_man"

int StartingConditional()
{
    if ((GetManaanRaceStateGlobal() == 3) &&
        (GetQueedleStateGlobal() == 1))
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}


