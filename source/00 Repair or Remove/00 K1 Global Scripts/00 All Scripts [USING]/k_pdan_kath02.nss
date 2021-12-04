//:: Name
/*
    XX User Defined Events Script
*/
//:: Created By:
//:: Copyright (c) 2002 Bioware Corp.

//#include "k_inc_generic"
//#include "k_inc_debug"
//#include "k_inc_utility"
#include "k_inc_dan"
void main()
{
    int nUser = GetUserDefinedEventNumber();


    if(nUser == HOSTILE_RETREAT)
    {
        UT_ReturnToBase();
    }
    else if (nUser == 10 ||
              nUser == 1011 )
    {
        int nRandom = Random(3);
        switch (nRandom)
        {
            case 0:
            {
                ActionPlayAnimation(ANIMATION_LOOPING_SLEEP,1.0,10.0);
            }
            break;
            case 1:
            {
                ActionMoveToObject(GetNearestObjectByTag("wp_ambient",OBJECT_SELF,2 + Random(2)),FALSE,3.0);
                ActionPlayAnimation(ANIMATION_FIREFORGET_VICTORY1);
            }
            break;
            case 2:
            {
                ActionDoCommand(SetFacingPoint(GetPosition(GetNearestObject(OBJECT_TYPE_CREATURE))));
                ActionPlayAnimation(ANIMATION_FIREFORGET_TAUNT);
                ActionPlayAnimation(ANIMATION_FIREFORGET_TAUNT);
            }
        }
        ActionDoCommand(SignalEvent(OBJECT_SELF,EventUserDefined(10)));

    }
}

