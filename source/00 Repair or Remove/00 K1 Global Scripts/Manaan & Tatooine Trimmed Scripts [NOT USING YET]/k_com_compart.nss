//:: k_act_compart
/*
     Remove a single computer spike from the
     inventory.
     Makes the Droid Friendly_1
*/
//:: Created By: Preston Watamaniuk
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"
#include "k_inc_utility"

void main()
{
    UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_HAS_TALKED_TO, TRUE);
    UT_RemoveRepairParts(1);
    ChangeToStandardFaction(OBJECT_SELF, STANDARD_FACTION_FRIENDLY_1);
}
