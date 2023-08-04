//:: k_con_isfemale
/*
    checks to see if pc is female
*/
//:: Created By:  Jason Booth
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

int StartingConditional()
{
    int iGender = GetGender(GetFirstPC());
    if (iGender == GENDER_FEMALE)
    {
        return TRUE;
    }
    return FALSE;
}

