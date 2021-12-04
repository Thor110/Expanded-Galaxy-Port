//:: k_def_endconv
/*
     On End of Conversation Script
*/
//:: Created By: Preston Watamaniuk
//:: Copyright (c) 2003 Bioware Corp.

#include "k_inc_debug"
#include "k_inc_switch"

void main()
{
    ExecuteScript("k_ai_master", OBJECT_SELF, KOTOR_DEFAULT_EVENT_ON_GLOBAL_DIALOGUE_END);
    /*
    //Added by Aidan March 27,03
    // this allows fleeing creatures to become active after conversation
    if(GetIsEnemy(GetFirstPC()) &&
       GetCommandable() == FALSE)
    {
        SetCommandable(TRUE);
    }

    //MODIFIED by Preston Watamaniuk on April 25, 2003
    //Put LOS check in for enemies to make a Determine Combat Round is appropriate.

    //If they drop through this function the end result is a GN_WalkWayPoints() call.
    if(GetIsObjectValid(GetNearestCreature(CREATURE_TYPE_REPUTATION, REPUTATION_TYPE_ENEMY, OBJECT_SELF,1, CREATURE_TYPE_PERCEPTION, PERCEPTION_SEEN)))
    {
        DelayCommand(0.2,GN_DetermineCombatRound());
    }

    else if(GN_DoPostDCRChecks())
    {
        GN_MyPrintString("GENERIC DEBUG *************** End Coversation Successful Fall through");
    }
    */
}



