//::///////////////////////////////////////////////
//:: Conversation
//:: k_pman_quetell_y
//:: Copyright (c) 2002 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Checks Queedle told player about money
*/
//:://////////////////////////////////////////////
//:: Created By: Lukas Kristjanson
//:: Created On: October 17, 2002
//:://////////////////////////////////////////////
#include "k_inc_man"

int StartingConditional()
{
    if (GetQueedleToldAboutMoneyLocal() == TRUE)
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}


