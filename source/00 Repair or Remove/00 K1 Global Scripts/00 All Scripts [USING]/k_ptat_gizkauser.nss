//:: k_def_userdef01
/*
    Default User Defined Events Script
*/
//:: Created By: Preston Watamaniuk
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_generic"
#include "k_inc_debug"
#include "k_inc_utility"
void main()
{
    int nUser = GetUserDefinedEventNumber();

    if(nUser == 1001) //HEARTBEAT
    {
        object oParty1 = GetPartyMemberByIndex(0);
        object oParty2 = GetPartyMemberByIndex(1);
        object oParty3 = GetPartyMemberByIndex(2);

        int nRand = Random(3);

        if (nRand == 0)
        {
            if (GetIsObjectValid(oParty1) == TRUE &&
                GetDistanceToObject(oParty1) < 40.0)
            {
                ClearAllActions();
                ActionMoveAwayFromObject(oParty1, TRUE);
            }
            else if (GetIsObjectValid(oParty2) == TRUE &&
                     GetDistanceToObject(oParty2) < 40.0)
            {
                ClearAllActions();
                ActionMoveAwayFromObject(oParty2, TRUE);
            }
            else if (GetIsObjectValid(oParty3) == TRUE &&
                     GetDistanceToObject(oParty3) < 40.0)
            {
                ClearAllActions();
                ActionMoveAwayFromObject(oParty3, TRUE);
            }
        }
        else if (nRand == 1)
        {
            if (GetIsObjectValid(oParty1) == TRUE &&
                GetDistanceToObject(oParty1) < 20.0)
            {
                ClearAllActions();
                ActionMoveToObject(oParty1, TRUE);
            }
            else if (GetIsObjectValid(oParty2) == TRUE &&
                     GetDistanceToObject(oParty2) < 20.0)
            {
                ClearAllActions();
                ActionMoveToObject(oParty2, TRUE);
            }
            else if (GetIsObjectValid(oParty3) == TRUE &&
                     GetDistanceToObject(oParty3) < 20.0)
            {
                ClearAllActions();
                ActionMoveToObject(oParty3, TRUE);
            }
        }
    }
    else if(nUser == 1002) // PERCEIVE
    {

    }
    else if(nUser == 1003) // END OF COMBAT
    {

    }
    else if(nUser == 1004) // ON DIALOGUE
    {

    }
    else if(nUser == 1005) // ATTACKED
    {

    }
    else if(nUser == 1006) // DAMAGED
    {

    }
    else if(nUser == 1007) // DEATH
    {

    }
    else if(nUser == 1008) // DISTURBED
    {

    }
    else if(nUser == 1009) // BLOCKED
    {

    }
    else if(nUser == 1010) // SPELL CAST AT
    {

    }
    else if(nUser == HOSTILE_RETREAT)
    {
        UT_ReturnToBase();
    }
}

