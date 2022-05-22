//:: k_pman_champ_m03
/*
     The player has won all of the races on Manaan.
     Player is male
     Random 3 of 4 to be placed Third from bottom
*/
//:: Created By: Lukas Kristjanson
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_man"

int StartingConditional()
{
    int iGender = GetGender(GetFirstPC());
    if ((GetManaanRaceStateGlobal() == 3)&&
        ((iGender == GENDER_MALE)) &&
        (Random(3) == 0))
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}
