//:: k_con_candstim01
/*
     Canderous Stim selection.
*/
//:: Created By: Preston Watamaniuk
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

int StartingConditional()
{
    int nX = d10();
    if(nX > 6)
    {
        return TRUE;
    }
    return FALSE;
}
