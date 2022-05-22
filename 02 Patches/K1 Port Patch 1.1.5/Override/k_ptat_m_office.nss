//::///////////////////////////////////////////////
//:: Conversation
//:: k_ptat_m_office
//:: Copyright (c) 2002 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Returns TRUE if OfficeMadLocal set to TRUE
*/
//:://////////////////////////////////////////////
//:: Created By: Lukas Kristjanson
//:: Created On: Sept 19, 2002
//:://////////////////////////////////////////////
#include "k_inc_tat"

int StartingConditional()
{
    if (GetOfficeMadLocal() == TRUE)
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}
