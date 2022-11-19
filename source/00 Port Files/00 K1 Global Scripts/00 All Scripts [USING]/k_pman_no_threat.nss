//::///////////////////////////////////////////////
//:: Conversation
//:: k_pman_no_threat
//:: Copyright (c) 2002 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Player has not yet been threatened by Hukta
    Player beaten 2nd round of races
    Queedle quit
*/
//:://////////////////////////////////////////////
//:: Created By: Lukas Kristjanson
//:: Created On: Oct 15, 2002
//:://////////////////////////////////////////////
#include "k_inc_man"

int StartingConditional()
{
    if ((GetHuktaThreatenedPlayerGlobal() == FALSE) &&
        (GetManaanRaceStateGlobal() == 2) &&
        (GetQueedleStateGlobal() == 1))
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}

