//::///////////////////////////////////////////////
//:: Conversation
//:: k_pman_lostset_n
//:: Copyright (c) 2002 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Resets the Global that determines if player lost last race
*/
//:://////////////////////////////////////////////
//:: Created By: Lukas Kristjanson
//:: Created On: Oct 15, 2002
//:://////////////////////////////////////////////
#include "k_inc_man"

void main()
{
    SetPlayerLostLastRaceGlobal(FALSE);
    ActionPauseConversation();
    ActionWait(2.0);
    ActionResumeConversation();
}

