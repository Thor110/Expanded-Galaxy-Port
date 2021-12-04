//::///////////////////////////////////////////////
//:: Conversation
//:: k_ptat_2gamewon
//:: Copyright (c) 2002 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Returns TRUE if player has won 2 game
    PazzakGame2WonLocal TRUE
*/
//:://////////////////////////////////////////////
//:: Created By: Lukas Kristjanson
//:: Created On: Sept 18, 2002
//:://////////////////////////////////////////////
#include "k_inc_tat"

int StartingConditional()
{
    if (GetPazzakGame2WonLocal() == TRUE)
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}

