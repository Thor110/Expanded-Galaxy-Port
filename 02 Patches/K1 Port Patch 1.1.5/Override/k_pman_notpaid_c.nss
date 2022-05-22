//::///////////////////////////////////////////////
//:: Conversation
//:: k_pman_notpaid_c
//:: Copyright (c) 2002 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Player not yet paid for last win in Manaan swoop races
*/
//:://////////////////////////////////////////////
//:: Created By: Lukas Kristjanson
//:: Created On: Oct 15, 2002
//:://////////////////////////////////////////////
#include "k_inc_man"
int StartingConditional()
{
    if (GetPlayerNotPaidLocal() == TRUE)
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}

