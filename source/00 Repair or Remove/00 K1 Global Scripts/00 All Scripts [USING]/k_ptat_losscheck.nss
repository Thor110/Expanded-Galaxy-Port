//::///////////////////////////////////////////////
//:: Conversation
//:: k_ptat_losscheck
//:: Copyright (c) 2002 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Returns TRUE if player lost his last game
    PazzakLastGameLostLocal TRUE
*/
//:://////////////////////////////////////////////
//:: Created By: Lukas Kristjanson
//:: Created On: Sept 18, 2002
//:://////////////////////////////////////////////
#include "k_inc_tat"

int StartingConditional()
{
    if (GetPazzakLastGameLostLocal() == TRUE)
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}


