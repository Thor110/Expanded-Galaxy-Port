//:: k_ptat_dockpay
/*
     The play pays the docking fee for Tatooine
*/
//:: Created By: John Winski
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_tat"

void main()
{
    object oPC = GetFirstPC();

    SetDockingPaidLocal(TRUE);

    TakeGoldFromCreature(100, oPC);
}
