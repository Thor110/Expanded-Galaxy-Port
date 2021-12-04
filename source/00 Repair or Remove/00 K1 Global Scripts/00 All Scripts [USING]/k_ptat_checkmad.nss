//::///////////////////////////////////////////////
//:: Conversation
//:: k_ptat_checkmad
//:: Copyright (c) 2002 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Returns TRUE if GandroffMadLocal set to TRUE
*/
//:://////////////////////////////////////////////
//:: Created By: Lukas Kristjanson
//:: Created On: Sept 18, 2002
//:://////////////////////////////////////////////
#include "k_inc_tat"

int StartingConditional()
{
    if (GetGandroffMadLocal() == TRUE)
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}

