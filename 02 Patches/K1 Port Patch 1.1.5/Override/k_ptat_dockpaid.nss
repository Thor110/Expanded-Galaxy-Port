//:: k_ptat_dockpaid
/*
     The player has paid the docking fee for Tatooine
*/
//:: Created By: John Winski
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_tat"

int StartingConditional()
{
    if (GetDockingPaidLocal() == TRUE)
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}
