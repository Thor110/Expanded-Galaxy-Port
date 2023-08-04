//::///////////////////////////////////////////////
//:: Conversation
//:: k_ptat_3gamewon
//:: Copyright (c) 2002 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Returns TRUE if player has won 3 game
    PazzakGame3WonLocal TRUE
*/
//:://////////////////////////////////////////////
//:: Created By: Lukas Kristjanson
//:: Created On: Sept 18, 2002
//:://////////////////////////////////////////////
#include "k_inc_tat"

int StartingConditional()
{
    if (GetPazzakGame3WonLocal() == TRUE)
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}


