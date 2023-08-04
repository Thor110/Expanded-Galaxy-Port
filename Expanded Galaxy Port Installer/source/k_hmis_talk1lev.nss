//:: k_hmis_Talk1lev
/*
    Checks if Mis_MissionTalk is at 1
    And if player is at proper level
*/
//:: Created By:  Drew K
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"


int StartingConditional()
{
    int iResult;

    iResult = GetGlobalNumber("Mis_MissionTalk")==1;
    // &&  GetHitDice(GetFirstPC()) >=6;
    return iResult;
}



