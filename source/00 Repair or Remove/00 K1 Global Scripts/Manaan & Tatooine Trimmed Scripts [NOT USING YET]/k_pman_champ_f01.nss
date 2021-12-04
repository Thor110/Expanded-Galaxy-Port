//:: k_pman_champ_f01
/*
     The player has won all of the races on Manaan.
     Player isfemale
*/
//:: Created By: Lukas Kristjanson
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_man"

int StartingConditional()
{
    int iGender = GetGender(GetFirstPC());
    if ((GetManaanRaceStateGlobal() == 3)&&
        ((iGender == GENDER_FEMALE)))


    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}


