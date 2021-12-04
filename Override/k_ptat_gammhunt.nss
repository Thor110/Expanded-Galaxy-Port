//:: k_ptat_gammhunt
/*
     The player has not been ambushed by the Gammoreans.
*/
//:: Created By: John Winski
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_tat"

int StartingConditional()
{
    if (GetGammoreanGoneGlobal() == FALSE && GetGammoreanBribeGlobal() == FALSE)
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}
