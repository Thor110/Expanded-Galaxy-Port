//::///////////////////////////////////////////////
//:: Conversation
//:: k_ptat_tatinfo_c
//:: Copyright (c) 2002 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Returns TRUE if JunixTatooineInfoLocal is TRUE,
    indicating that the player has already asked
    Junix Nard about Tatooine
*/
//:://////////////////////////////////////////////
//:: Created By: Lukas Kristjanson
//:: Created On: Sept 18, 2002
//:://////////////////////////////////////////////
#include "k_inc_tat"

int StartingConditional()
{
    if (GetJunixTatooineInfoLocal() == TRUE)
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}
