//:: k_pkas_randwalk
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
        int nRand = Random(5);

        if (GetIsInCombat() == FALSE)
        {
            switch (nRand)
            {
                case 0: case 1: case 2: case 3:
                    ClearAllActions();
                    ActionRandomWalk();
                break;

                case 4:
                    object oCreature = GetNearestObjectByTag(GetTag(OBJECT_SELF));

                    if (GetDistanceToObject(oCreature) > 0.0 &&
                        GetDistanceToObject(oCreature) < 10.0 &&
                        GetIsInCombat(OBJECT_SELF) == FALSE &&
                        GetIsInCombat(oCreature) == FALSE &&
                        Random(2) == 0)
                    {
                        ClearAllActions();
                        AssignCommand(oCreature, ClearAllActions());

                        AssignCommand(oCreature, ActionMoveToObject(OBJECT_SELF, TRUE));
                        AssignCommand(oCreature, ActionPlayAnimation(ANIMATION_FIREFORGET_TAUNT));

                        ActionMoveToObject(oCreature, TRUE);
                        ActionPlayAnimation(ANIMATION_FIREFORGET_TAUNT);
                    }
                    else
                    {
                        ClearAllActions();
                        ActionPlayAnimation(ANIMATION_FIREFORGET_TAUNT);
                    }
                break;
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

