//:: k_hmis_Talk6-8
/*
    Checks if Mis_MissionTalk is at 6 or 8
*/
//:: Created By:  Drew K
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"


int StartingConditional()
{
    int iResult;

    iResult = GetGlobalNumber("Mis_MissionTalk")==6 ||
              GetGlobalNumber("Mis_MissionTalk")==8;
    return iResult;
}





