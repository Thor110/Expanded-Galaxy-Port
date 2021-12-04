//:: k_hmis_Talk3lev
/*
    Checks if Mis_MissionTalk is at 3
    And if player is off Taris
*/
//:: Created By:  Drew K
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"


int StartingConditional()
{
    int iResult;

    iResult = GetGlobalNumber("Mis_MissionTalk")==3 &&
    GetGlobalNumber("K_Current_Planet")!=10;
    return iResult;
}




