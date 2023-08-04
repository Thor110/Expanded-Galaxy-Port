//::///////////////////////////////////////////////
//:: Conversation
//:: k_ptat_taname_ch
//:: Copyright (c) 2002 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Returns TRUE if TanisdNameLocal not set
    Player has not yet asked his name
*/
//:://////////////////////////////////////////////
//:: Created By: Lukas Kristjanson
//:: Created On: Sept 19, 2002
//:://////////////////////////////////////////////
#include "k_inc_tat"

int StartingConditional()
{
    if (GetTanisNameLocal() == FALSE)
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}


