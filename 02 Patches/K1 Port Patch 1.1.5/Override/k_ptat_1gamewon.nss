//::///////////////////////////////////////////////
//:: Conversation
//:: k_ptat_1gamewon
//:: Copyright (c) 2002 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Returns TRUE is player has won 1 game
    PazzakGame1WonLocal TRUE 
*/
//:://////////////////////////////////////////////
//:: Created By: Lukas Kristjanson
//:: Created On: Sept 18, 2002
//:://////////////////////////////////////////////
#include "k_inc_tat"

int StartingConditional()
{
    if (GetPazzakGame1WonLocal() == TRUE)
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}

