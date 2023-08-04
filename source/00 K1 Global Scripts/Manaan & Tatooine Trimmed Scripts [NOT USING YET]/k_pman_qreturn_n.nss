//::///////////////////////////////////////////////
//:: Conversation
//:: k_pman_qreturn_n
//:: Copyright (c) 2002 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Queedle has not yet returned the player's money.
*/
//:://////////////////////////////////////////////
//:: Created By: Lukas Kristjanson
//:: Created On: October 15, 2002
//:://////////////////////////////////////////////
#include "k_inc_man"

int StartingConditional()
{
    if (GetQueedleGaveMoneyBackLocal() == TRUE)
    {
        return FALSE;
    }
    else
    {
        return TRUE;
    }
}


