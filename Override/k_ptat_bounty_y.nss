//::///////////////////////////////////////////////
//:: Conversation
//:: k_ptat_bounty_y
//:: Copyright (c) 2002 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Checks that ToldOfBountyLocal set.
    Player told of Sand People bounty
*/
//:://////////////////////////////////////////////
//:: Created By: Lukas Kristjanson
//:: Created On: Sept 19, 2002
//:://////////////////////////////////////////////
#include "k_inc_tat"

int StartingConditional()
{
    if (GetToldOfBountyLocal() == TRUE)
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}



