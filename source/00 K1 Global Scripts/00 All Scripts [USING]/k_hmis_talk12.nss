//:: k_hmis_Talk12
/*
    Checks if Mis_MissionTalk is at 12
*/
//:: Created By:  Drew K
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"


int StartingConditional()
{
    int iResult;

    iResult = GetGlobalNumber("Mis_MissionTalk")==12;
    return iResult;
}







