//:: k_con_ismale
/*
    checks if pc is male
*/
//:: Created By:  Jason Booth
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

int StartingConditional()
{
    int iGender = GetGender(GetFirstPC());
    if (iGender == GENDER_MALE)
    {
        return TRUE;
    }
    return FALSE;
}

