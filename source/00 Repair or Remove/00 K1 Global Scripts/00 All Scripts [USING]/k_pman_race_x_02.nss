//::///////////////////////////////////////////////
//:: Conversation
//:: k_pman_race_x_02
//:: Copyright (c) 2002 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Player lost his last race
    2 0f 4 random, to be placed on Second from bottom
*/
//:://////////////////////////////////////////////
//:: Created By: Lukas Kristjanson
//:: Created On: Oct 15, 2002
//:://////////////////////////////////////////////
#include "k_inc_man"

int StartingConditional()
{
    if ((GetPlayerLostLastRaceGlobal() == TRUE) &&
        (Random(2) == 0))
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}




