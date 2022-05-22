//::///////////////////////////////////////////////
//:: Conversation
//:: k_pman_race_x_03
//:: Copyright (c) 2002 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Player lost his last race
    3 0f 4 random, to be placed on Third from bottom
*/
//:://////////////////////////////////////////////
//:: Created By: Lukas Kristjanson
//:: Created On: Oct 15, 2002
//:://////////////////////////////////////////////
#include "k_inc_man"

int StartingConditional()
{
    if ((GetPlayerLostLastRaceGlobal() == TRUE) &&
        (Random(3) == 0))
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}



