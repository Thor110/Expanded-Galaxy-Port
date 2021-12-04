//:: k_hmis_Talk3
/*
    Checks if Mis_MissionTalk is at 3
*/
//:: Created By:  Drew K
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"


int StartingConditional()
{
    int iResult;

    iResult = GetGlobalNumber("Mis_MissionTalk")==3;
    return iResult;
}


