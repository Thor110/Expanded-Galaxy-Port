//::///////////////////////////////////////////////
//:: Conversation
//:: k_pman_quleave_y
//:: Copyright (c) 2002 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Queedle quit because of the player
    beating his first round time
*/
//:://////////////////////////////////////////////
//:: Created By: Lukas Kristjanson
//:: Created On: October 15, 2002
//:://////////////////////////////////////////////
#include "k_inc_man"

int StartingConditional()
{
    if (GetQueedleLeavingLocal() == TRUE)
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}


