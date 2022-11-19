//::///////////////////////////////////////////////
//:: Conversation
//:: k_ptat_checkhunt
//:: Copyright (c) 2002 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Checks if AskAboutHuntGlobal is TRUE
    Signifies that player asked him about hunting.
*/
//:://////////////////////////////////////////////
//:: Created By: Lukas Kristjanson
//:: Created On: Sept 19, 2002
//:://////////////////////////////////////////////
#include "k_inc_tat"

int StartingConditional()
{
    if (GetAskAboutHuntGlobal() == TRUE)
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}

