//::///////////////////////////////////////////////
//:: Name k_messenger_plot
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
     This is the generic setup script for
     the messenger plot. It will position the
     party and have the messenger approach them.
*/
//:://////////////////////////////////////////////
//:: Created By: Brad Prince
//:: Created On: May 1, 2003
//:://////////////////////////////////////////////
#include "k_inc_utility"
void main()
{
    object oWP0 = GetNearestObjectByTag("K_MESSENGER_SPAWN_PC0");
    object oWP1 = GetNearestObjectByTag("K_MESSENGER_SPAWN_PC1");
    object oWP2 = GetNearestObjectByTag("K_MESSENGER_SPAWN_PC2");

    ActionPauseConversation();
    // Set the party up.
    ActionJumpToLocation(GetLocation(GetObjectByTag("K_MESSENGER_SPAWN_2")));
    UT_TeleportWholeParty(oWP0, oWP1, oWP2);
    // Walk to the speaker.
    //ActionMoveToLocation(GetLocation(GetObjectByTag("K_MESSENGER_SPAWN_PC0")));
    ActionMoveToObject(GetObjectByTag("K_MESSENGER_SPAWN_PC0"), FALSE, 2.0);
    ActionResumeConversation();
}
