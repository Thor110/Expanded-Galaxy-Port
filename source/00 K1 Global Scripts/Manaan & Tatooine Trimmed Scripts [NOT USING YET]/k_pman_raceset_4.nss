//::///////////////////////////////////////////////
//:: Conversation
//:: k_pman_raceset_4
//:: Copyright (c) 2002 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Sets that player won Third round of races on Manaan
    Sets that player needs to be paid
*/
//:://////////////////////////////////////////////
//:: Created By: Lukas Kristjanson
//:: Created On: Oct 15, 2002
//:://////////////////////////////////////////////
#include "k_inc_man"

void main()
{
    SetManaanRaceStateGlobal(3);
    SetPlayerNotPaidLocal(TRUE);
}




