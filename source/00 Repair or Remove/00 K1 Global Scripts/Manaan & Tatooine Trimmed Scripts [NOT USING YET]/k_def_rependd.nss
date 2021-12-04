//:: Preston Watamaniuk
/*
     Checks if the droid has
     been reactivated or not
     whenever any dialogue
     ends.
*/
//:: Created By: Preston Watamaniuk
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"
#include "k_inc_utility"
#include "k_inc_generic"

void main()
{
    if(GetLocalBoolean(OBJECT_SELF, SW_PLOT_HAS_TALKED_TO) == FALSE)
    {
        //ChangeToStandardFaction(OBJECT_SELF, STANDARD_FACTION_FRIENDLY_1);
        //The above line was commened out by Aidan (march 24,03).
        //I commented it out because it was making the droid hosile to enemies
        //before the droid had been reactivated
        GN_ResetDroidDeactivationState();
    }
    else if(GetLocalBoolean(OBJECT_SELF, SW_PLOT_REPAIR_ACTIVATE_PATROL_ROUTE) == TRUE)
    {
        ChangeToStandardFaction(OBJECT_SELF, STANDARD_FACTION_FRIENDLY_1);
        GN_DetermineCombatRound();
    }
}
