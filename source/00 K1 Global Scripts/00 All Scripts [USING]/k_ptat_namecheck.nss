//::///////////////////////////////////////////////
//:: Conversation
//:: k_ptat_checkname
//:: Copyright (c) 2002 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Returns TRUE if GandroffNameLocal is TRUE
*/
//:://////////////////////////////////////////////
//:: Created By: Lukas Kristjanson
//:: Created On: Sept 18, 2002
//:://////////////////////////////////////////////
#include "k_inc_tat"

int StartingConditional()
{
    if (GetGandroffNameLocal() == TRUE)
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}

