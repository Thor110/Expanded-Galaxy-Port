//::///////////////////////////////////////////////
//:: Conversation
//:: k_pman_quepaid_n
//:: Copyright (c) 2002 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Queedle was NOT given money by the player
*/
//:://////////////////////////////////////////////
//:: Created By: Lukas Kristjanson
//:: Created On: October 17, 2002
//:://////////////////////////////////////////////
#include "k_inc_man"

int StartingConditional()
{
    if (GetQueedleUpgradeGlobal() == TRUE)
    {
        return FALSE;
    }
    else
    {
        return TRUE;
    }
}

