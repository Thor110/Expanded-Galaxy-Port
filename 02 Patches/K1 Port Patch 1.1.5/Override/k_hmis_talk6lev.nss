//:: k_hmis_Talk6lev
/*
    Checks if Mis_MissionTalk is at 6
    And if player is at proper level
*/
//:: Created By:  Drew K
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"


int StartingConditional()
{
    int iResult;

    iResult = GetGlobalNumber("Mis_MissionTalk")==6;

    // &&G GetHitDice(GetFirstPC()) >=10;
    return iResult;
}




