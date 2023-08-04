//::///////////////////////////////////////////////
//:: Conversation
//:: k_pman_payrace_2
//:: Copyright (c) 2002 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Player has won second round but has not been paid yet
*/
//:://////////////////////////////////////////////
//:: Created By: Lukas Krsitjanson
//:: Created On: Oct 15, 2002
//:://////////////////////////////////////////////
#include "k_inc_man"

int StartingConditional()
{
    if ((GetManaanRaceStateGlobal() == 2) &&
       (GetPlayerNotPaidLocal() == TRUE))
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}


