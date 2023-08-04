//:: k_ptat_yukanpers
/*
     The player has not yet tried persuading Yuka Laka.
*/
//:: Created By:
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_tat"

int StartingConditional()
{
    if (GetYukalPersuadeLocal() == FALSE)
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}
