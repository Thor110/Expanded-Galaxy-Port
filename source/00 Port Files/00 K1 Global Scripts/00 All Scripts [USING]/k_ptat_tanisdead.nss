//:: k_ptat_tanisdead
/*
     Tanis is dead.
*/
//:: Created By: John Winski
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

#include "k_inc_tat"

int StartingConditional()
{
    if (GetTanisDeadGlobal() == TRUE)
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}
