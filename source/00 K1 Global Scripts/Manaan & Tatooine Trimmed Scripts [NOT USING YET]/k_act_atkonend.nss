//:: Attack on end of conversation
/*
    This script makes an NPC attack the person
    they are currently talking with.  This will
    only make the single character hostile not
    their entire faction.
*/
//:: Created By:  Jason Booth
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"
#include "k_inc_generic"

void main()
{
    DelayCommand(0.2,ChangeToStandardFaction(OBJECT_SELF,STANDARD_FACTION_HOSTILE_1));
    DelayCommand(0.3,GN_DetermineCombatRound());
}

