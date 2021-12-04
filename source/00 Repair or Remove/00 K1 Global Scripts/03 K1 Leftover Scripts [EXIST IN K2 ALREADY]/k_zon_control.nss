//:: k_zon_control
/*
     This is the heartbeat
     for the control node.
     Every heartbeat the control
     node determines if it should
     recall members of its zone
*/
//:: Created By: Preston Watamaniuk
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"
#include "k_inc_zone"
#include "k_inc_utility"

void CUSTOM_PrintClosestTargets();

void main()
{
    int bValid = FALSE;
    int nCnt = 1;
    float fDistance;
    float fFinalDistance = 0.0;
    if(ZN_CheckReturnConditions() == TRUE)
    {
        CUSTOM_PrintClosestTargets();
        bValid = TRUE;
    }
    
    object oFollower = GetNearestCreature(CREATURE_TYPE_REPUTATION, REPUTATION_TYPE_FRIEND, OBJECT_SELF, nCnt);
    while(GetIsObjectValid(oFollower))
    {
        if(ZN_CheckIsFollower(OBJECT_SELF, oFollower))
        {
            fDistance = GetDistanceBetween(OBJECT_SELF, oFollower);
            if(fDistance > fFinalDistance)
            {
                fFinalDistance = fDistance;
            }
            if(bValid == TRUE && ZN_CheckFollowerReturnConditions(oFollower) == TRUE)
            {
                //GN_MyPrintString("ZONING DEBUG ***************** " + GN_ReturnDebugName(oFollower) + " Returning");
                ZN_MoveToController(OBJECT_SELF, oFollower);
            }
        }
        nCnt++;
        oFollower = GetNearestCreature(CREATURE_TYPE_REPUTATION, REPUTATION_TYPE_FRIEND, OBJECT_SELF, nCnt);
    }
}

//This is here for debugging to allow for better testing.
void CUSTOM_PrintClosestTargets()
{
    //GN_MyPrintString("ZONING DEBUG ***************** OBJECT LOG - CLOSEST OBJECTS");
    //GN_MyPrintString("ZONING DEBUG ***************** CONTROLLER " + GN_ReturnDebugName(OBJECT_SELF));
    int nCnt = 1;
    object oClose;
    for(nCnt; nCnt < 10; nCnt++)
    {
        oClose = GetNearestCreature(CREATURE_TYPE_PLAYER_CHAR, PLAYER_CHAR_NOT_PC, GetPartyMemberByIndex(0), nCnt);
        if(GetIsObjectValid(oClose))
        {
            //GN_MyPrintString("ZONING DEBUG ***************** #" + GN_ITS(nCnt) + " " + GN_ReturnDebugName(oClose));
        }
    }
}
