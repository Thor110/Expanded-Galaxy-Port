//::///////////////////////////////////////////////
//:: Conversation
//:: k_pman_huktmad_1
//:: Copyright (c) 2002 Bioware Corp.
//:://////////////////////////////////////////////
/*
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
    if ((GetManaanRaceStateGlobal() == 2) &&
        (GetQueedleStateGlobal() == 1))
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}


