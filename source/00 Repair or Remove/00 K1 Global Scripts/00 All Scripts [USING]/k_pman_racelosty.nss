//::///////////////////////////////////////////////
//:: Conversation
//:: k_pman_racelosty
//:: Copyright (c) 2002 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Player lost his last race
*/
//:://////////////////////////////////////////////
//:: Created By: Lukas Kristjanson
//:: Created On: Oct 15, 2002
//:://////////////////////////////////////////////
#include "k_inc_man"

int StartingConditional()
{
    if (GetPlayerLostLastRaceGlobal() == TRUE)
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}

