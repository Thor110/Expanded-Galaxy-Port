//:: k_hmis_Talk10lev
/*
    Checks if Mis_MissionTalk is at 11
    And if player is at proper level
*/
//:: Created By:  Drew K
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"


int StartingConditional()
{
    int iResult;

    iResult = GetGlobalNumber("Mis_MissionTalk")==11;
    // && GetHitDice(GetFirstPC()) >=12;
    return iResult;
}




