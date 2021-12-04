//::///////////////////////////////////////////////
//:: Conversation
//:: k_pman_lostset_q
//:: Copyright (c) 2002 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Sets the Global that determines if player lost last race
    to TRUE.
    Sets that Queedle is now quitting racing.
*/
//:://////////////////////////////////////////////
//:: Created By: Lukas Kristjanson
//:: Created On: Oct 15, 2002
//:://////////////////////////////////////////////
#include "k_inc_man"

void main()
{
    SetPlayerLostLastRaceGlobal(TRUE);
    SetQueedleStateGlobal(1);
}

