//::///////////////////////////////////////////////
//:: Conversation
//:: k_pman_notpaid_n
//:: Copyright (c) 2002 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Player was paid for last win in Manaan swoop races
    No money owing
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
        return FALSE;
    }
    else
    {
        return TRUE;
    }
}


