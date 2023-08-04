//:: k_hmis_Talk14
/*
    Checks if Mis_MissionTalk is at 14
*/
//:: Created By:  Drew K
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"


int StartingConditional()
{
    int iResult;

    iResult = GetGlobalNumber("Mis_MissionTalk")==14;
    return iResult;
}








