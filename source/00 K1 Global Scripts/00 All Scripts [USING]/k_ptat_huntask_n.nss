//::///////////////////////////////////////////////
//:: Conversation
//:: k_ptat_checkhunt
//:: Copyright (c) 2002 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Checks if AskAboutHuntGlobal is FALSE
    Signifies that player has not asked about hunting.
*/
//:://////////////////////////////////////////////
//:: Created By: Lukas Kristjanson
//:: Created On: Sept 19, 2002
//:://////////////////////////////////////////////
#include "k_inc_tat"

int StartingConditional()
{
    if (GetAskAboutHuntGlobal() == FALSE)
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}


