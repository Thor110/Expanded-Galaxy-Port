//:: k_ptat17aa_enter
/*

*/
//:: Created By: John Winski
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"
#include "k_inc_tat"

void main()
{
    object oCustoms = GetObjectByTag("tat17_01cust_01");
    object oEntered = GetEnteringObject();

    if (GetDockingPaidLocal(oCustoms) == FALSE && GetIsPC(oEntered) == TRUE)
    {
        DelayCommand(1.0, AssignCommand(oCustoms, ActionStartConversation(oEntered)));
    }
}
