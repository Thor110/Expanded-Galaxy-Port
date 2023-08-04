//::///////////////////////////////////////////////
//:: Conversation
//:: k_pman_raceset_1
//:: Copyright (c) 2002 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Sets that player won first round of races on Manaan
    Sets that player needs to be paid
    QueedleState set to 1 (he quits)
*/
//:://////////////////////////////////////////////
//:: Created By: Lukas Kristjanson
//:: Created On: Oct 15, 2002
//:://////////////////////////////////////////////
#include "k_inc_man"

void main()
{
    SetManaanRaceStateGlobal(1);
    SetPlayerNotPaidLocal(TRUE);
    SetQueedleStateGlobal(1);

}

