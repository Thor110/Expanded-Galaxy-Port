//:: Name
/*
    XX User Defined Events Script
*/
//:: Created By:
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_dan"
void main()
{
    int nUser = GetUserDefinedEventNumber();
    if(nUser == 10 || nUser == 1011)
    {
        ActionPlayAnimation(ANIMATION_LOOPING_SLEEP,1.0,30.0);
        ActionDoCommand(SignalEvent(OBJECT_SELF,EventUserDefined(10)));
    }
    else if(nUser == 1001) //HEARTBEAT
    {

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

