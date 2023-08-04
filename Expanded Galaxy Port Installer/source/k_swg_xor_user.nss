//:: k_swg_xor_user
/*
    Xor User Defined Events Script
*/
//:: Created By:
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_generic"
#include "k_inc_debug"

void main()
{
    int nUser = GetUserDefinedEventNumber();

    if(nUser == 1001) //HEARTBEAT
    {

    }
    else if(nUser == 1002) // PERCEIVE
    {
        int nState = GetGlobalNumber("K_XOR_AMBUSH");
        if(nState == 1)
        {
            DelayCommand(1.0, ActionStartConversation(GetFirstPC(), "", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE));
        }
        /*
        
        if(GetLastPerceived() == GetFirstPC())
        {
            int nState = GetGlobalNumber("K_XOR_AMBUSH");
            if(nState == 1)
            {
                ClearAllActions();
                DelayCommand(1.0, ActionStartConversation(GetFirstPC(), "", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE));
            }
        }
        */
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
        object oThug = GetObjectByTag("G_THUG01");
        
        if(GetCurrentHitPoints(OBJECT_SELF) == 1 && !GetIsObjectValid(oThug))
        {
            ClearAllActions();
            SurrenderToEnemies();
            //ActionPlayAnimation(ANIMATION_LOOPING_PAUSE_DRUNK, 1.0, 5.0);
            ActionStartConversation(GetFirstPC());
            AdjustReputation(GetFirstPC(), OBJECT_SELF, 100);
        }
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
}

