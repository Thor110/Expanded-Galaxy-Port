//::///////////////////////////////////////////////
//:: Conversation
//:: k_pman_quepaid_y
//:: Copyright (c) 2002 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Queedle was given money by the player
    Queedle has not yet upgraded his swoop
*/
//:://////////////////////////////////////////////
//:: Created By: Lukas Kristjanson
//:: Created On: October 17, 2002
//:://////////////////////////////////////////////
#include "k_inc_man"

int StartingConditional()
{
    if ((GetQueedleUpgradeGlobal() == TRUE) &&
        (GetQueedleStateGlobal() < 2))
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}
